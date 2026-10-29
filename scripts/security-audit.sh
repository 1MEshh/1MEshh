#!/usr/bin/env bash
set -euo pipefail

echo "=== Running Security & Privacy Gate for 1MEshh Profile ==="

# 1. Scan text files for hardcoded local filesystem paths or usernames
echo "Checking for local filesystem paths in text files..."
LEAKED_PATHS="$(git grep -I -iE '(/home/[a-zA-Z0-9_-]+|C:\\Users|\bverso\b)' -- ':!scripts/security-audit.sh' || true)"
if [ -n "$LEAKED_PATHS" ]; then
    echo "ERROR: Leaked private path found in text:"
    echo "$LEAKED_PATHS"
    exit 1
fi

# 2. Check binary assets for metadata leaks
echo "Checking binary assets for embedded paths..."
for asset in $(git ls-files 'assets/*'); do
    if strings "$asset" | grep -iE '(/home/|verso|192\.168\.|188\.51\.)'; then
        echo "ERROR: Leaked path or metadata found in binary asset $asset"
        exit 1
    fi
done

# 3. Check for private IP addresses or credentials
echo "Checking for private IP addresses..."
LEAKED_IPS="$(git grep -I -iE '\b(192\.168\.|10\.|188\.51\.)' -- ':!scripts/security-audit.sh' || true)"
if [ -n "$LEAKED_IPS" ]; then
    echo "ERROR: Leaked private IP found:"
    echo "$LEAKED_IPS"
    exit 1
fi

# 4. Check git committer email
GIT_EMAIL="$(git config user.email || true)"
if [[ "$GIT_EMAIL" != *"noreply.github.com"* ]]; then
    echo "ERROR: Git user.email ($GIT_EMAIL) is not a secure noreply email."
    exit 1
fi

echo "Security gate PASSED cleanly with 0 leaks."

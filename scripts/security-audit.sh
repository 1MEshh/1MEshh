#!/usr/bin/env bash
set -euo pipefail

echo "=== Running Security & Privacy Gate for 1MEshh Profile ==="

# 1. Scan for hardcoded local filesystem paths
echo "Checking for local filesystem paths..."
LEAKED_PATHS="$(git grep -iE '(/home/[a-zA-Z0-9_-]+|C:\\Users|\bverso\b|\bhh\b)' || true)"
if [ -n "$LEAKED_PATHS" ]; then
    echo "ERROR: Leaked private path found:"
    echo "$LEAKED_PATHS"
    exit 1
fi

# 2. Check for private IP addresses or credentials
echo "Checking for private IP addresses..."
LEAKED_IPS="$(git grep -iE '\b(192\.168\.|10\.|188\.51\.)' || true)"
if [ -n "$LEAKED_IPS" ]; then
    echo "ERROR: Leaked private IP found:"
    echo "$LEAKED_IPS"
    exit 1
fi

echo "Security gate PASSED cleanly with 0 leaks."

<p align="center">
  <img src="assets/banner.svg" alt="1MEshh / Systems &amp; Security" width="100%" />
</p>

### Overview

I am an Information Technology student focused on low-level Linux systems programming, practical cybersecurity, and applied AI tooling. My work sits at the intersection of systems software engineering and security operations, spanning both defensive (SOC detection engineering and memory forensics) and offensive (penetration testing, protocol dissection, and deception analysis) workflows.

My primary engineering languages are **Python** (for security automation, telemetry analytics, and rapid tooling) and **Rust** (for high-throughput systems daemons, memory safety, and low-latency utilities).

---

### Core Areas of Practice

| Domain | Focus & Methodologies |
| :--- | :--- |
| **SOC & Blue Team** | Detection engineering (Sigma rule authoring), rootless memory forensics (`/proc/<pid>/maps` analysis), RFC 8446 TLS ClientHello JA3 fingerprinting, DNS Shannon entropy exfiltration detection, and repository PII/secret scrubbing. |
| **Offensive & Security Research** | Protocol analysis, interactive deception honeypots (HoneyFS POSIX AST parsing), RFC 7519 JWT verification flaw auditing, evasion mechanics, and sandboxed payload analysis. |
| **Linux & Systems Programming** | Direct kernel interface querying (`procfs`, `sysfs`), Wayland/Hyprland IPC daemon engineering, Linux gaming runtime optimization, real-time audio DSP pipelines, and Arch Linux PKGBUILD packaging. |
| **Applied AI & Automation** | Heuristic threat deobfuscation (base64/IFS payload reconstruction), local LLM workflow orchestration, and automated vulnerability triage. |

---

### Flagship Projects

A curated selection of open-source tools developed across systems engineering and security:

#### Cybersecurity & Security Research

| Project | Stack | Description |
| :--- | :---: | :--- |
| [**Aegis**](https://github.com/1MEshh/Aegis) | `C++20` | Rootless Linux memory forensics, fileless execution detector (`memfd_create`), and cloaked PID rootkit hunter. |
| [**Talon**](https://github.com/1MEshh/Talon) | `Rust` | High-throughput Sigma rule compiler and threat detection engine for Linux and Windows event streams. |
| [**Doom**](https://github.com/1MEshh/Doom) | `Rust` | Modular offensive security engine with local LLM integration and multi-language shell generators. |
| [**Mirage**](https://github.com/1MEshh/Mirage) | `Python` | Zero-dependency deception honeypot with in-memory HoneyFS and POSIX shell AST deobfuscator. |
| [**Netpulse**](https://github.com/1MEshh/Netpulse) | `C++20` | Zero-dependency PCAP reader, RFC 8446 TLS JA3 fingerprinter, and DNS Shannon entropy exfiltration scorer. |
| [**Sanitize**](https://github.com/1MEshh/Sanitize) | `Python` | Bit-accurate EXIF/GPS media scrubber, RFC 1918 private subnet detector, and Git pre-push hygiene gate. |
| [**Specter**](https://github.com/1MEshh/Specter) | `Rust` | RFC 7519 JWT security auditor testing algorithm confusion, weak secret brute-force, and HMAC forgery. |
| [**Warden**](https://github.com/1MEshh/Warden) | `Python` | Git commit-graph secret scanner and credential vault auditor with high-entropy heuristic analysis. |

#### Linux Infrastructure & Systems Tooling

| Project | Stack | Description |
| :--- | :---: | :--- |
| [**Overdrive**](https://github.com/1MEshh/Overdrive) | `Rust` | Linux gaming runtime orchestrator, Steam VDF parser, and true 1% / 0.1% frametime stutter telemetry auditor. |
| [**Barforge**](https://github.com/1MEshh/Barforge) | `Rust` | Waybar custom module daemon with 3-tier design token compiler and WCAG 2.2 contrast math. |
| [**Tracegrid**](https://github.com/1MEshh/Tracegrid) | `Rust` | Paris-Traceroute multipath flow latency auditor and BGP route divergence analyzer with SVG topology mapping. |
| [**Pacguard**](https://github.com/1MEshh/Pacguard) | `Python` | Arch Linux PKGBUILD supply-chain auditor and systemd unit security exposure scorecard generator. |
| [**voiceGG**](https://github.com/1MEshh/voiceGG) | `Rust` | Real-time, low-latency audio processing and EQ daemon for Linux desktop environments. |
| [**KeyCaster**](https://github.com/1MEshh/KeyCaster) | `TypeScript` | Audio-first spaced-repetition typing engine with bilingual transliteration and offline Dexie storage. |

---

### Technical Toolkit

* **Core Languages:** **Python** (Standard Library, Asyncio, Security Tooling), **Rust** (Systems, Concurrency, Cargo), C++20, TypeScript, POSIX Shell
* **Environments:** Arch Linux, CachyOS, Wayland (Hyprland / Sway), Systemd, Docker
* **Analysis & Network Tooling:** Wireshark / TShark, PCAP, Sigma Rules, Procfs / Smaps, GDB, Valgrind
* **Engineering Standards:** Zero-dependency architecture where reliability is critical, reproducible build flags (`--remap-path-prefix`, `-ffile-prefix-map`), and strict zero-leak hygiene.

---

<p align="center">
  <sub>Open-source systems &amp; security projects maintained at <a href="https://github.com/1MEshh">github.com/1MEshh</a></sub>
</p>

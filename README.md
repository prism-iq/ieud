# φ (phi)

A minimal security shell powered by zoe.

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)

## Installation

```bash
# Linux
curl -sL https://raw.githubusercontent.com/prism-iq/ieud/main/install.sh | sudo bash

# macOS
curl -sL https://raw.githubusercontent.com/prism-iq/ieud/main/install-mac.sh | bash

# Windows (PowerShell as Admin)
iwr -useb https://raw.githubusercontent.com/prism-iq/ieud/main/install.ps1 | iex
```

## Usage

```bash
ζ          # Run everything
ζ s        # Kill threats
ζ v        # Verify files
ζ k        # Detect intrusions
ζ a        # Clean system
ζ p        # Status
```

Typo-tolerant:
```bash
ω kill     # Works
ω kil      # Works
ω k        # Works
```

## Components

| Name | Symbol | Function |
|------|--------|----------|
| hunter | ☠ | Threat termination |
| watcher | ॐ | File integrity |
| guard | ⚔ | Intrusion detection |
| cleaner | 🔥 | System purification |
| reviver | 💀 | Process resurrection |
| healer | 💚 | Recovery |
| core | ☸ | Kernel protection |
| net | ⚡ | Network security |
| eye | ☀ | Monitoring |
| vault | 🌊 | Backup |

## Output Filters

```bash
λ <cmd>    # Greek alphabet output
ᚱ <cmd>    # Runes output
```

## Emergency

Hold `Right Ctrl` for 3 seconds to stop everything.

## Requirements

- Linux: firejail, bubblewrap, sqlite, inotify-tools
- macOS: Homebrew, coreutils, sqlite3, fswatch
- Windows: PowerShell 5.1+

## Contributing

PRs welcome. Open an issue first for big changes.

## License

[MIT](LICENSE)

# φ (phi)

A minimal security shell with divine guardians.

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
ζ s        # Shiva - kill threats
ζ v        # Vishnu - verify integrity
ζ k        # Kali - detect intrusions
ζ a        # Agni - purify system
ζ p        # Pantheon status
```

Typo-tolerant input:
```bash
ω shiva    # Works
ω shi      # Works
ω sh       # Works
```

## Components

| God | Symbol | Function |
|-----|--------|----------|
| Shiva | ☠ | Threat termination |
| Vishnu | ॐ | File integrity |
| Kali | ⚔ | Intrusion detection |
| Agni | 🔥 | System purification |
| Yama | 💀 | Process resurrection |
| Tara | 💚 | Recovery |
| Buddha | ☸ | Kernel protection |
| Ganesha | ⚡ | Network security |
| Inti | ☀ | Monitoring |
| Viracocha | 🌊 | Backup |

## Output Filters

```bash
λ <cmd>    # Greek alphabet output
ᚱ <cmd>    # Elder Futhark runes output
```

## Killswitch

Hold `Right Ctrl` for 3 seconds to terminate all φ processes.

## Requirements

- Linux: firejail, bubblewrap, sqlite, inotify-tools
- macOS: Homebrew, coreutils, sqlite3, fswatch
- Windows: PowerShell 5.1+

## Contributing

Pull requests welcome. For major changes, open an issue first.

## License

[MIT](LICENSE)

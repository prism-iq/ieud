#!/bin/bash
# φ macOS installer
# Run: curl -sL https://raw.githubusercontent.com/prism-iq/ieud/main/install-mac.sh | bash

set -e
echo "φ"

# deps
if ! command -v brew &>/dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install --quiet coreutils sqlite3 fswatch 2>/dev/null || true

# dirs
mkdir -p ~/.phi/bin

# download
BASE="https://raw.githubusercontent.com/prism-iq/ieud/main/bin"
for s in pantheon shiva vishnu kali agni buddha ganesha yama tara inti viracocha φ ζ ω λ; do
    curl -sL "$BASE/$s" -o ~/.phi/bin/$s 2>/dev/null || true
done
chmod +x ~/.phi/bin/*

# PATH
if [[ ":$PATH:" != *":$HOME/.phi/bin:"* ]]; then
    echo 'export PATH="$HOME/.phi/bin:$PATH"' >> ~/.zshrc
    echo 'export PATH="$HOME/.phi/bin:$PATH"' >> ~/.bashrc
fi

echo "ζ"

#!/bin/bash
# φ installer

set -e

[[ $EUID -ne 0 ]] && exec sudo "$0" "$@"

echo "φ"

# deps
pacman -S --needed --noconfirm firejail bubblewrap sqlite inotify-tools iptables gpm tmux 2>/dev/null || \
apt-get install -y firejail bubblewrap sqlite3 inotify-tools iptables gpm tmux 2>/dev/null || \
dnf install -y firejail bubblewrap sqlite inotify-tools iptables gpm tmux 2>/dev/null || true

# dirs
mkdir -p /etc/atlas/{chitragupta,flamme/{src,bin}}
mkdir -p /var/log/atlas /var/run/atlas

# bins
cp -f bin/* /usr/local/bin/ 2>/dev/null || true
chmod +x /usr/local/bin/{φ,ζ,ω,λ,ᚱ,pantheon,shiva,vishnu,buddha,kali,ganesha,agni,yama,tara,inti,viracocha,atlas,flamme,flow,killswitch,commit,claude,chitragupta,claude-memory,clip,keyguard,cles} 2>/dev/null || true

# memory
touch /etc/atlas/chitragupta/claude.db
sqlite3 /etc/atlas/chitragupta/claude.db "CREATE TABLE IF NOT EXISTS memories(id INTEGER PRIMARY KEY,ts TEXT,type TEXT,content TEXT);" 2>/dev/null || true

# keymap fr
echo "KEYMAP=fr" > /etc/vconsole.conf 2>/dev/null || true

echo "ζ"

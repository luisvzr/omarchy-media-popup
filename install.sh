#!/usr/bin/env bash
set -euo pipefail

repo_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

install -Dm755 "$repo_dir/bin/omarchy-media-tui" "$HOME/.local/bin/omarchy-media-tui"
install -Dm755 "$repo_dir/bin/omarchy-launch-media-tui" "$HOME/.local/bin/omarchy-launch-media-tui"

echo "Installed media TUI commands:"
echo "  omarchy-media-tui"
echo "  omarchy-launch-media-tui"
echo
echo "Next steps:"
echo "  1. Merge snippets/waybar-mpris.jsonc into ~/.config/waybar/config.jsonc"
echo "  2. Merge snippets/waybar-style.css into ~/.config/waybar/style.css"
echo "  3. Merge snippets/hyprland.conf into your Hyprland config"
echo "  4. Run: hyprctl reload && omarchy restart waybar"

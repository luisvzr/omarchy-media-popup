# Omarchy Media Popup

A small `playerctl`/`playerctld` media controller for Omarchy.

It adds a Waybar MPRIS item with hover metadata and click actions, plus a floating Alacritty TUI popup for controls.

## Requirements

- Omarchy / Hyprland
- Waybar with the MPRIS module
- `playerctl`
- `playerctld`
- `alacritty`

## Install

```bash
./install.sh
```

Then merge the config snippets:

- `snippets/waybar-mpris.jsonc` into `~/.config/waybar/config.jsonc`
- `snippets/waybar-style.css` into `~/.config/waybar/style.css`
- `snippets/hyprland.conf` into `~/.config/hypr/hyprland.conf` or your personal Hyprland override files

Apply changes:

```bash
hyprctl reload
omarchy restart waybar
```

## Usage

- Hover the Waybar media item for track details.
- Left click opens the floating TUI.
- Middle click toggles play/pause.
- Right click skips to next.
- Scroll changes volume.

Inside the TUI:

- `space`: play/pause
- `h` / `l`: seek backward/forward
- `j` / `k`: volume down/up
- `n` / `p`: next/previous
- `s`: stop
- `q`: close

## Notes

Waybar supports hover tooltips, click actions, and scroll actions for modules. It does not provide a native command hook on hover, so the popup is bound to click while hover shows metadata.

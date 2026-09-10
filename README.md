# Asphalt Legends — Omarchy theme

Neon night-pack Omarchy theme inspired by *Asphalt Legends* (magenta / cyan on deep purple-black).

## Install

```bash
omarchy theme install https://github.com/AlxWolfenstein97/omarchy-asphalt-legends-theme.git
omarchy theme set "Asphalt Legends"
```

Or clone into place:

```bash
git clone https://github.com/AlxWolfenstein97/omarchy-asphalt-legends-theme.git ~/.config/omarchy/themes/asphalt-legends
omarchy theme set "Asphalt Legends"
```

## Optional extras

### About / screensaver branding

ASCII + images ship in the theme (`icon.txt`, `logo.txt`, `icon.png`, `logo.png`).

- Style → About → Set From Image → pick `icon.png` (or copy `icon.txt` / `about.txt` into `~/.config/omarchy/branding/`)
- Style → Screensaver → same with `logo.png` / `logo.txt` / `screensaver.txt`

### Unlock (Plymouth)

`unlock.png` + `preview-unlock.png` — Style → Unlock → pick this theme.

### MangoHud

HUD layout template + install hook (colors follow every theme after one setup):

```bash
cp mangohud.conf.tpl ~/.config/omarchy/themed/mangohud.conf.tpl
cp mangohud.theme-set-hook.sample ~/.config/omarchy/hooks/theme-set.d/mangohud
chmod +x ~/.config/omarchy/hooks/theme-set.d/mangohud
omarchy theme set "Asphalt Legends"
```

## Cycle wallpapers

```bash
omarchy theme bg next
```

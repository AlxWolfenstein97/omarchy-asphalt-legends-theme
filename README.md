# Asphalt Legends — Omarchy theme

Neon night-pack theme for [Omarchy](https://omarchy.org/): deep purple-black, magenta accent, cyan nitro. Inspired by the look of *Asphalt Legends* — **not affiliated with Gameloft** (see [Credits](#credits--legal-ish) below).

<p align="center">
  <img src="logo.png" alt="Asphalt Legends wordmark used for unlock / README" width="520" />
</p>

![Desktop preview](preview.png)

![Unlock / Plymouth preview](preview-unlock.png)

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

Cycle wallpapers with `omarchy theme bg next`.

## What’s in the pack

| Asset | Role |
|-------|------|
| `colors.toml` | Palette (the real theme) |
| `backgrounds/` | Wallpapers |
| `unlock.png` / `preview-unlock.png` | Plymouth unlock + picker mockup |
| `preview.png` | Theme switcher preview |
| `icon.txt` / `logo.txt` (+ `about.txt` / `screensaver.txt`) | About & screensaver **ASCII** branding |
| `icon.png` / `logo.png` | Same marks as images (README + optional “Set From Image”) |
| `mangohud.conf.tpl` + `mangohud.theme-set-hook.sample` | Optional HUD tinting |

### Branding (About / screensaver)

**Prefer the `.txt` files.** Copy them into `~/.config/omarchy/branding/` (or paste via Style → About / Screensaver → Edit Text). That’s what you’re meant to see on the TTY-style About screen and the screensaver.

The `.png` versions are here for the README and for a quick Style → **Set From Image** try. In my experience Omarchy’s image→ASCII path is a bit thinicky on color and boxing, so don’t expect magic from the PNGs — the hand/transcoded text is the good path.

### Unlock

Style → Unlock → pick this theme (`unlock.png` / `preview-unlock.png`).

### MangoHud (optional)

Layout lives in the `.tpl` (set once; Goverlay is a fine WYSIWYG to design a layout, then keep colors as `{{ name_strip }}`). Install once:

```bash
cp mangohud.conf.tpl ~/.config/omarchy/themed/mangohud.conf.tpl
cp mangohud.theme-set-hook.sample ~/.config/omarchy/hooks/theme-set.d/mangohud
chmod +x ~/.config/omarchy/hooks/theme-set.d/mangohud
omarchy theme set "Asphalt Legends"
```

After that, **every** theme switch retints the HUD from that theme’s `colors.toml`. Without the hook, the template still renders into the active theme dir, but MangoHud won’t see it.

## Extend further with plugins

This repo is **palette + assets** on purpose. For more of the desktop to follow the same colors:

- **[Accord](https://github.com/vonsensey/accord)** — GTK / Qt bridge (file manager, File Roller, qBittorrent, qpwgraph, and friends). Install: `omarchy plugin add https://github.com/vonsensey/accord --enable`  
  Browse more on the [Omarchy Plugins](https://plugins.omarchy.org/) site.
- **[Omacord](https://github.com/ASwenia/omacord)** — Vesktop / Vencord Discord client follows Omarchy themes live: `omarchy plugin add https://github.com/ASwenia/omacord --enable`

Accord in action is basically “your file manager finally wears the theme.” Omacord on Vesktop looks like this (DMs / names redacted):

![Vesktop with Omacord on Asphalt Legends](docs/vesktop-omacord.png)

- **[OMCP](https://github.com/btsouth/omarchy-omcp)** — MCP desktop bridge (themes, windows, screenshots, …). Helped build the theme preview here: `omarchy plugin add https://github.com/btsouth/omarchy-omcp --enable`

## Accessibility / taste

I’m **mostly blind**. These colors and contrasts are tuned so *I* can read the desktop. They might be loud, odd, or wrong for someone else’s eyes — fork and retune `colors.toml` without guilt.

## Git / issues / PRs

I don’t know much about git. I may not live in Issues or PRs. It’s a theme — esthetics — so there often isn’t much to “fix.” That said, AI tooling can help me with reviews if something useful shows up. Forks are welcome; it’s a public repo.

## Credits / legal-ish

- Visual inspiration and reference art from **Gameloft**’s *Asphalt* / *Asphalt Legends* branding and marketing. **Not affiliated with, endorsed by, or sponsored by Gameloft.** Just public pixels arranged into an Omarchy theme — no money, no official product.
- If Gameloft hates this existing, they can say so and I’ll deal with the repo accordingly.
- Built with a lot of steering from me and a lot of typing from **Cursor** (Auto / agent on free-trial chaos across emails, whatever). Co-author credit on commits is optional; the wheel was still mine.

## License

Do whatever you want with this theme pack unless Gameloft (or the law) says otherwise. Fork it, recolor it, ship it in a rice, feed it to an AI. No warranty — it’s wallpaper and hex codes.

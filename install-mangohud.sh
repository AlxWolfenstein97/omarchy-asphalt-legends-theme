#!/usr/bin/env bash
# One-shot MangoHud wiring for this theme pack (and every other colors.toml theme).
# Creates the dirs `cp` / `install` need, drops the template + theme-set hook, then
# re-applies the current theme so ~/.config/MangoHud/MangoHud.conf gets painted.
set -euo pipefail

here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
themed="${XDG_CONFIG_HOME:-$HOME/.config}/omarchy/themed"
hooks="${XDG_CONFIG_HOME:-$HOME/.config}/omarchy/hooks/theme-set.d"
mangohud="${XDG_CONFIG_HOME:-$HOME/.config}/MangoHud"

mkdir -p "$themed" "$hooks" "$mangohud"
cp -f "$here/mangohud.conf.tpl" "$themed/mangohud.conf.tpl"
install -m 755 "$here/mangohud.theme-set-hook.sample" "$hooks/mangohud"

printf 'asphalt: MangoHud template → %s\n' "$themed/mangohud.conf.tpl"
printf 'asphalt: theme-set hook → %s\n' "$hooks/mangohud"

if command -v omarchy >/dev/null 2>&1; then
  # Re-render + run hooks so MangoHud.conf appears without a manual theme flip.
  current="$(omarchy theme current 2>/dev/null || true)"
  if [[ -n $current ]]; then
    omarchy theme set "$current"
    printf 'asphalt: re-applied %s (HUD should retint now)\n' "$current"
  else
    printf 'asphalt: run: omarchy theme set "<your theme>"\n' >&2
  fi
else
  printf 'asphalt: omarchy not on PATH — run theme set after install\n' >&2
fi

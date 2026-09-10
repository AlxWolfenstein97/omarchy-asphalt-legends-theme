# Omarchy User Template: MangoHud
#
# Renders into the active theme as mangohud.conf on every `omarchy theme set`.
# A theme-set hook copies that file to ~/.config/MangoHud/MangoHud.conf so the
# overlay actually picks it up (MangoHud does not read the theme directory).
#
# THEME PACK AUTHORS / USERS:
#   Ship mangohud.conf.tpl plus mangohud.theme-set-hook.sample in the theme.
#   Install once:
#     cp mangohud.conf.tpl ~/.config/omarchy/themed/mangohud.conf.tpl
#     cp mangohud.theme-set-hook.sample ~/.config/omarchy/hooks/theme-set.d/mangohud
#     chmod +x ~/.config/omarchy/hooks/theme-set.d/mangohud
#   Then every `omarchy theme set` retints the HUD from that theme's colors.toml.
#   Layout lives in the .tpl (set once, tweak anytime); colors always flow.
#
# Colors use {{ name_strip }} (RRGGBB, no '#') — what MangoHud expects.
# Layout below matches a typical Goverlay export; tweak freely.

legacy_layout=0

background_alpha=0.6
round_corners=0
background_color={{ background_strip }}
font_size=24
text_color={{ bright_foreground_strip }}
position=middle-left
toggle_hud=Shift_R+F12
no_display
gpu_list=0
table_columns=3
gpu_text=GPU
gpu_stats
gpu_load_change
gpu_load_value=50,90
gpu_load_color={{ green_strip }},{{ yellow_strip }},{{ red_strip }}
vram
vram_color={{ magenta_strip }}
gpu_temp
gpu_color={{ green_strip }}
cpu_text=CPU
cpu_stats
cpu_load_change
cpu_load_value=50,90
cpu_load_color={{ green_strip }},{{ yellow_strip }},{{ red_strip }}
cpu_temp
cpu_color={{ cyan_strip }}
ram
ram_color={{ accent_strip }}
fps
frame_timing
frametime_color={{ green_strip }}
engine_color={{ bright_foreground_strip }}
fps_limit_method=late
fps_limit=0
fps_color_change
fps_color={{ red_strip }},{{ yellow_strip }},{{ green_strip }}
fps_value=30,60
# output_folder=   # optional; Goverlay often sets this to a user path
log_interval=100
toggle_logging=Shift_L+F2
blacklist=zenity,protonplus,lsfg-vk-ui,bazzar,gnome-calculator,pamac-manager,lact,ghb,bitwig-studio,ptyxis,yumex

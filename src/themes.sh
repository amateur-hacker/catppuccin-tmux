#!/usr/bin/env bash

SELECTED_THEME="$(tmux show-option -gv @catppuccin-tmux_theme)"
TRANSPARENT_THEME="$(tmux show-option -gv @catppuccin-tmux_transparent)"

case $SELECTED_THEME in
"mocha")
  declare -A THEME=(
    ["background"]="#181823" # Base
    ["foreground"]="#cdd6f4" # Text
    ["black"]="#45475a"      # Surface1
    ["red"]="#f38ba8"        # Red
    ["green"]="#a6e3a1"      # Green
    ["yellow"]="#f9e2af"     # Yellow
    ["blue"]="#89b4fa"       # Blue
    ["magenta"]="#cba6f7"    # Mauve
    ["cyan"]="#89dceb"       # Sky
    ["white"]="#bac2de"      # Subtext1

    ["bblack"]="#313244"   # Surface0
    ["bred"]="#eba0ac"     # Maroon
    ["bgreen"]="#94e2d5"   # Teal
    ["byellow"]="#fab387"  # Peach
    ["bblue"]="#74c7ec"    # Sapphire
    ["bmagenta"]="#f5c2e7" # Pink
    ["bcyan"]="#89dceb"    # Sky (same as cyan)
    ["bwhite"]="#a6adc8"   # Subtext0
  )
  ;;
*)
  declare -A THEME=(
    ["background"]="#181823" # Base
    ["foreground"]="#cdd6f4" # Text
    ["black"]="#45475a"      # Surface1
    ["red"]="#f38ba8"        # Red
    ["green"]="#a6e3a1"      # Green
    ["yellow"]="#f9e2af"     # Yellow
    ["blue"]="#89b4fa"       # Blue
    ["magenta"]="#cba6f7"    # Mauve
    ["cyan"]="#89dceb"       # Sky
    ["white"]="#bac2de"      # Subtext1

    ["bblack"]="#313244"   # Surface0
    ["bred"]="#eba0ac"     # Maroon
    ["bgreen"]="#94e2d5"   # Teal
    ["byellow"]="#fab387"  # Peach
    ["bblue"]="#74c7ec"    # Sapphire
    ["bmagenta"]="#f5c2e7" # Pink
    ["bcyan"]="#89dceb"    # Sky (same as cyan)
    ["bwhite"]="#a6adc8"   # Subtext0
  )
  ;;
esac

# Override background with "default" if transparent theme is enabled
if [ "${TRANSPARENT_THEME}" == 1 ]; then
  THEME["background"]="default"
fi

THEME['ghgreen']="#3fb950"
THEME['ghmagenta']="#A371F7"
THEME['ghred']="#d73a4a"
THEME['ghyellow']="#d29922"

RESET="#[fg=${THEME[foreground]},bg=${THEME[background]},nobold,noitalics,nounderscore,nodim]"

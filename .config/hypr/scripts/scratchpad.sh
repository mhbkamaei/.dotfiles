#!/bin/bash

class="$(hyprctl clients | grep scpad)"

if [ -z "$class" ]; then
	kitty --class scpad --hold bash -c "hyprctl dispatch movetoworkspacesilent special:magic &&
	                                    hyprctl dispatch togglespecialworkspace magic &&
                                      clear &&
                                      tmux att -t scpad || tmux new -s scpad"
else
	hyprctl dispatch togglespecialworkspace magic
fi

set -g status-style fg=$thm_fg,bg=$thm_bg

set -g @flash "#[fg=$thm_red,bg=$thm_bg]#[fg=$thm_bg,bg=$thm_red]#[fg=$thm_red,bg=$thm_bg] "

custom_status_prefix="#{?client_prefix,#{@flash},}"

custom_window_flags="
                    #{?window_active,,}
                    #{?window_last_flag,󱞮,}
                    #{?window_activity_flag,,}
                    #{?window_bell_flag,󰂞,}
                    #{?window_silence_flag,,}
                    #{?window_marked_flag,,}
                    #{?window_zoomed_flag,󰊓,}
                    "

custom_git="#{?#(cd #{pane_current_path}; git rev-parse --is-inside-work-tree), #{#[fg=$thm_green,bg=$thm_bg]#[fg=$thm_bg,bg=$thm_green] #[fg=$thm_fg,bg=$thm_gray] #(cd #{pane_current_path}; git rev-parse --abbrev-ref HEAD)#[fg=$thm_gray,bg=$thm_bg]},}"

# STATUS_LEFT
# custom_status_left="#[fg=$thm_green,bg=$thm_bg]#[fg=$thm_bg,bg=$thm_green]#{pane_current_path}#[fg=$thm_green,bg=$thm_bg]"
# set -g status-left $custom_status_left
set -g status-left ""

# STATUS_WINDOW
custom_window_current_format=" #[fg=$thm_blue,bg=$thm_bg]#[fg=$thm_bg,bg=$thm_blue] #[fg=$thm_fg,bg=$thm_gray] #W#{?window_flags, ${custom_window_flags},}|#I#[fg=$thm_gray,bg=$thm_bg]"
custom_window_format=" #[fg=$thm_gray,bg=$thm_bg]#[fg=$thm_fg,bg=$thm_gray] #W#{?window_flags, ${custom_window_flags},}|#I#[fg=$thm_gray,bg=$thm_bg]"
set-window-option -g window-status-separator " "
set-window-option -g window-status-current-format $custom_window_current_format$custom_git
set-window-option -g window-status-format $custom_window_format

# STATUS_RIGHT
custom_status_right="#[fg=$thm_orange,bg=$thm_bg]#[fg=$thm_bg,bg=$thm_orange] #[fg=$thm_fg,bg=$thm_gray] #S#[fg=$thm_gray,bg=$thm_bg] "
set -g status-right $custom_status_prefix$custom_status_right






# set -g @catppuccin_window_left_separator ""
# set -g @catppuccin_window_right_separator " "
# set -g @catppuccin_window_middle_separator "|"
# set -g @catppuccin_window_number_position "right"
#
# set -g @catppuccin_window_default_fill "none"
# set -g @catppuccin_window_default_text "#W"
#
# set -g @catppuccin_window_current_fill "all"
# set -g @catppuccin_window_current_text " #W"
#
# set -g @catppuccin_window_status_enable "yes"
# set -g @catppuccin_window_status_icon_enable "yes"
# set -g @catppuccin_icon_window_last " 󱞮"
# set -g @catppuccin_icon_window_current ""
# set -g @catppuccin_icon_window_zoom "󰊓"
# set -g @catppuccin_icon_window_mark " "
# set -g @catppuccin_icon_window_silent " "
# set -g @catppuccin_icon_window_activity ""
# set -g @catppuccin_icon_window_bell "󰂞"
#
# set -g @catppuccin_status_modules_right "directory session"
# set -g @catppuccin_status_left_separator  " "
# set -g @catppuccin_status_right_separator ""
# set -g @catppuccin_status_right_separator_inverse "no"
# set -g @catppuccin_status_fill "icon"
# set -g @catppuccin_status_connect_separator "no"
# set -g @catppuccin_session_icon ""
#
# set -g @catppuccin_directory_text "#{pane_current_path}"

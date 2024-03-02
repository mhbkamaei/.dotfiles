#!/usr/bin/env bash

tmux new-window \; \
	send-keys "vi ." C-m \; \
	split-window -hp 30 \; \
	send-keys "git log --graph --oneline --decorate" C-m \; \
	split-window -vfp 20 \; \
	send-keys "cowsay 'hi from tmux!!!'" C-m \; \
	select-pane -t 1 \;

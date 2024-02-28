_fzf_vim_fzf() {
	fzf-tmux -p80%,60% --prompt=' ' \
		--layout=reverse --multi --height=50% --min-height=20 --border \
		--border-label-pos=2 \
		--color='header:italic:underline,label:blue' \
		--preview-window='right,50%,border-left' \
		--bind='ctrl-/:change-preview-window(down,50%,border-top|hidden|)' "$@"
}

_fzf_vim_config() {
	fd . ~/.config -t f | _fzf_vim_fzf | xargs -r echo "nvim"
}

__fzf_vim_init() {
	bind '"\er": redraw-current-line'
	local o
	for o in "$@"; do
		bind -m emacs-standard '"\C-g'${o:0:1}'": "`_fzf_vim_'$o'`\e\C-e\er\C-m"'
	done
}

__fzf_vim_init config
# -----------------------------------------------------------------------------

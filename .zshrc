# Download Znap, if it's not there yet.
[[ -f ~/Git/zsh-snap/znap.zsh ]] ||
    git clone https://github.com/marlonrichert/zsh-snap.git ~/Git/zsh-snap

source ~/Git/zsh-snap/znap.zsh  # Start Znap

# `znap prompt` makes your prompt visible in less than 12ms!
znap prompt sindresorhus/pure

# `znap source` automatically downloads and activates your plugins.
znap source marlonrichert/zsh-autocomplete
znap source zsh-users/zsh-autosuggestions
znap source zsh-users/zsh-syntax-highlighting
# znap source zdharma/fast-syntax-highlighting
znap source marlonrichert/zcolors

znap eval zcolors "zcolors ${(q)LS_COLORS}"

alias l='exa --group-directories-first'
alias la='exa -a --group-directories-first'
alias ll='exa -lah --group-directories-first'
alias ls='exa --color=auto --group-directories-first --icons'
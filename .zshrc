toopy --onlyprint
~/.vim/pack/default/start/gruvbox/gruvbox_256palette.sh
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme /home/beltza/.zshrc
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(completion history)
source ~/.zsh/zsh-syntax/zsh-syntax-highlighting.zsh
alias v=nvim
alias t=toopy
alias doom=$HOME/.emacs.d/bin/doom
alias nf=neofetch
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ytmp3='youtube-dl --extract-audio --audio-format mp3'

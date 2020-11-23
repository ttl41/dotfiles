toopy --onlyprint
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme /home/beltza/.zshrc
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(completion history)
EDITOR=nvim
export GOPATH=$HOME/go
source ~/.zsh/zsh-syntax/zsh-syntax-highlighting.zsh
alias v=nvim
alias t=toopy
alias vimgolf="python -m vimgolf"
alias doom=$HOME/.emacs.d/bin/doom
alias nf=neofetch
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ytmp3='youtube-dl --extract-audio --audio-format mp3'
alias threehours='touch -d "3 hours ago"'

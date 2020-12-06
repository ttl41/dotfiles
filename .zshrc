fortune
export PATH="$HOME/go/bin:$PATH"
todo
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme /home/beltza/.zshrc
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export EDITOR=nvim
source ~/.zsh/zsh-syntax/zsh-syntax-highlighting.zsh
export ZSH_AUTOSUGGEST_STRATEGY=(history)
export GOPATH=$HOME/go
alias v=nvim
alias t=toopy
alias vimgolf="python -m vimgolf"
alias doom=$HOME/.emacs.d/bin/doom
alias nf=neofetch
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ytmp3='youtube-dl --extract-audio --audio-format mp3'
alias threehours='touch -d "3 hours ago"'
source /usr/share/fzf/key-bindings.zsh

# we will make history!
export HISTFILESIZE=100000000000
export HISTSIZE=100000000000
export HISTFILE=~/.zsh_history
export SAVEHIST=100000000000 

setopt HIST_FIND_NO_DUPS
# following should be turned off, if sharing history via setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY

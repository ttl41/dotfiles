export PATH="$HOME/.scripts:$HOME/go/bin:$PATH:$HOME/.local/bin"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export EDITOR=nvim
export STEAM_COMPAT_DATA_PATH=~/.proton/
source ~/.zsh/zsh-syntax/zsh-syntax-highlighting.zsh
export ZSH_AUTOSUGGEST_STRATEGY=(history)
export GOPATH=$HOME/go
alias v=nvim
alias t=toopy
alias vimgolf="python -m vimgolf"
alias doom=$HOME/.emacs.d/bin/doom
alias nf=neofetch
alias nfull="neofetch --config none"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ytmp3='yt-dlp --extract-audio --audio-format mp3'
alias threehours='touch -d "3 hours ago"'
alias py=python
alias r=ranger

# we will make history!
export HISTFILESIZE=100000000000
export HISTSIZE=100000000000
export HISTFILE=~/.zsh_history
export SAVEHIST=100000000000 

ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=magenta,bold'
setopt histignorealldups

setopt HIST_FIND_NO_DUPS
# following should be turned off, if sharing history via setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY
eval "$(starship init zsh)"

# opam configuration
test -r /home/beltza/.opam/opam-init/init.zsh && . /home/beltza/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

export PNPM_HOME="/home/beltzal/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
export PATH="$PATH:/home/beltzal/projects/flutter/bin"

export bsltinstall=/home/beltzal/Programs/basalt/bsltinstall
export bsltdeps=/home/beltzal/Programs/basalt/bsltdeps
export PATH=$bsltinstall/bin:$PATH
export LD_LIBRARY_PATH=$bsltinstall/lib/:$LD_LIBRARY_PATH
export bsltdeps=/home/beltzal/Programs/basalt/bsltdeps
export EUROC_PATH=$bsltdeps/V1_01_easy/ # Set euroc dataset path. You can get a dataset from http://robotics.ethz.ch/~asl-datasets/ijrr_euroc_mav_dataset/vicon_room1/V1_01_easy/V1_01_easy.zip
export EUROC_LOG=debug
export EUROC_HMD=false # if false, a fake controller will be tracked, else a fake HMD
export EUROC_PLAY_FROM_START=true
export SLAM_LOG=debug
export SLAM_SUBMIT_FROM_START=true
export SLAM_CONFIG=$bsltdeps/basalt/data/monado/euroc.toml # Point to Basalt config file for Euroc
export OXR_DEBUG_GUI=1 # We will need the debug ui to start streaming the dataset

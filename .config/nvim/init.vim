if exists('g:vscode')
    source ~/.config/nvim/scripts/vscode.vim
else
    source ~/.config/nvim/scripts/plugins.vim
    source ~/.config/nvim/scripts/bepoazerty.vim
    source ~/.config/nvim/scripts/keybinds.vim
    source ~/.config/nvim/scripts/settings.vim
endif

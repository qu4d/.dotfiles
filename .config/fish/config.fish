### global settings ###
set -gx EDITOR nvim

### fish settings ###
set fish_greeting
set -g fish_key_bindings fish_vi_key_bindings

### app settings ###
# pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin
pyenv init - fish | source

# orbstack
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

# atac
set -gx ATAC_KEY_BINDINGS $HOME/.config/atac/vim_key_bindings.toml

# fzf
set fzf_fd_opts --hidden --no-ignore --max-depth 5
set fzf_directory_opts --bind "ctrl-o:execute($EDITOR {} &> /dev/tty)"
fzf_configure_bindings --directory=\cF --processes=\cP --git_log= --git_status=

### aliases ###
# update
alias update='brew update && brew upgrade --greedy && brew autoremove && brew cleanup && brew doctor && mas upgrade'

# nvim
alias n='nvim'

# lazygit
alias lg='lazygit'

# lazydocker
alias ld='lazydocker'

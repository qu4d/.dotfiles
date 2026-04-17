### global settings ###
set -gx EDITOR nvim

### fish settings ###
set fish_greeting
set -g fish_key_bindings fish_vi_key_bindings

### app settings ###
# zellij
if status is-interactive
    set -x ZELLIJ_AUTO_ATTACH true
    set -x ZELLIJ_AUTO_EXIT true
    eval (zellij setup --generate-auto-start fish | string collect)
end

# emacs
set -gx PATH $HOME/.emacs.d/bin $PATH

# golang
set -gx GOPATH $HOME/.local/go
set -gx PATH $GOPATH/bin $PATH

# fzf
set fzf_fd_opts --hidden --no-ignore --max-depth 5
set fzf_directory_opts --bind "ctrl-o:execute($EDITOR {} &> /dev/tty)"
fzf_configure_bindings --directory=\cF --processes=\cP --git_log= --git_status=

### aliases ###
alias update='mas upgrade && fisher update && brew update && brew upgrade --greedy && brew autoremove && brew cleanup && brew doctor'
alias em='emacs -nw'

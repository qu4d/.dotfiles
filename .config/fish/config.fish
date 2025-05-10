### global settings ###
set -gx EDITOR nvim


### fish settings ###
set fish_greeting
set -g fish_key_bindings fish_vi_key_bindings


### other settings ###
# atac
set -gx ATAC_KEY_BINDINGS $HOME/.config/atac/vim_key_bindings.toml

# fzf
set fzf_fd_opts --hidden --no-ignore --max-depth 5
set fzf_directory_opts --bind "ctrl-o:execute($EDITOR {} &> /dev/tty)"
fzf_configure_bindings --directory=\cF --processes=\cP --git_log= --git_status=


### aliases ###
# nvim
alias n='nvim'

# brew
alias br='brew update && brew upgrade && brew autoremove && brew cleanup && brew doctor'
alias brg='brew update && brew upgrade --greedy && brew autoremove && brew cleanup && brew doctor'

# phockup
alias phockup-preview='phockup ~/Downloads/photos "/Volumes/Seagate 1TB/photos" -d "YYYY/MM" -y'
alias phockup-backup='phockup ~/Downloads/photos "/Volumes/Seagate 1TB/photos" -d "YYYY/MM" -m'

# lazygit
alias lg='lazygit'

# lazydocker
alias ld='lazydocker'

# orbstack
source ~/.orbstack/shell/init2.fish 2>/dev/null || :

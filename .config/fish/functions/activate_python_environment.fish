function activate_python_environment --on-variable PWD
    if not set -q VIRTUAL_ENV
        set venv_path "$PWD/.venv"
        if test -d "$venv_path" -a -f "$venv_path/bin/activate.fish"
            source "$venv_path/bin/activate.fish"
        end
    else
        set current_venv_dir (dirname $VIRTUAL_ENV)
        if test "$current_venv_dir" != "$PWD"
            if functions -q deactivate
                deactivate
            end
        end
    end
end

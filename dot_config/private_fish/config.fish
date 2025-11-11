if status is-interactive
    # Commands to run in interactive sessions can go here
    # eval (zellij setup --generate-auto-start fish | string collect)
end

set -gx EDITOR nvim

set fish_greeting

abbr -a e nvim

if command -v exa >/dev/null
    abbr -a l exa
    abbr -a ls exa
    abbr -a ll 'exa -la'
    abbr -a la 'exa -a'
else
    abbr -a l 'ls -CF'
    abbr -a ll 'ls -alF'
    abbr -a la 'ls -A'
end

# Edit the command line using vi keys
fish_vi_key_bindings

# Starship
starship init fish | source

# zellij
function zr
    command zellij run --name "$argv" -- fish -c "$argv"
end
function zrf
    command zellij run --name "$argv" --floating -- fish -c "$argv"
end
function ze
    command zellij edit $argv
end
function zef
    command zellij edit --floating $argv
end

# Yazi set up

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

# zoxide (better cd)
abbr -a cd z
zoxide init fish | source

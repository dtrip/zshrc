export TERM='xterm-256color'

# export PATH="$PATH:/var/www"

# present working directory
DIR=$(dirname $0:A)
export RBENV_ROOT=/usr/local/share/rbenv

source $DIR/zaliases

if [ -r "$DIR/custom" ]; then
    source $DIR/custom
fi


if [ -r "$HOME/powerline-shell.py" ]; then
    function powerline_precmd() {
        PS1="$(~/powerline-shell.py $? --shell zsh 2> /dev/null)"
    }

    function install_powerline_precmd() {
        for s in "${precmd_functions[@]}"; do
          if [ "$s" = "powerline_precmd" ]; then
              return
          fi
        done
    precmd_functions+=(powerline_precmd)
    }

    if [ "$TERM" != "linux" ]; then
        install_powerline_precmd
    fi

fi



if [ -d "$HOME/.pyenv" ]; then
    export PATH="$HOME/.pyenv/bin:$PATH"
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

if [ -d "/usr/local/share/rbenv" ]; then
    export PATH="$RBENV_ROOT/bin:$PATH"
    eval "$(rbenv init -)"
fi

source $DIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load zsh-autosuggestions.
# source $DIR/plugins/zsh-autosuggestions/autosuggestions.zsh
#
# # Enable autosuggestions automatically.
# zle-line-init() {
#     zle autosuggest-start
# }
# zle -N zle-line-init
#

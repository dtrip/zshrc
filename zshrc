export TERM='xterm-256color'

# export PATH="$PATH:/var/www"

# present working directory
DIR=$(dirname $0:A)

source $DIR/zaliases

if [ -r "$DIR/custom" ]; then
    source $DIR/custom
fi

source $DIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Load zsh-autosuggestions.
source $DIR/plugins/zsh-autosuggestions/autosuggestions.zsh
#
# # Enable autosuggestions automatically.
zle-line-init() {
    zle autosuggest-start
}
zle -N zle-line-init

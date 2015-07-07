export TERM='xterm-256color'

# export PATH="$PATH:/var/www"

# present working directory
DIR=$(dirname $0:A)

source $DIR/zaliases

if [ -r "$DIR/custom" ]; then
    source $DIR/custom
fi

source $DIR/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

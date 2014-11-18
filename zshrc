export TERM='xterm-256color'

# present working directory
DIR=$(dirname $0:A)

source $DIR/zaliases

if [ -r "$DIR/custom" ]; then
    source $DIR/custom
fi

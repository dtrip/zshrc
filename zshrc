
# present working directory
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source $DIR/zaliases

if [ -r "$DIR/custom" ]; then
    source $DIR/custom
fi


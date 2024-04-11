PACKAGE_DIR=$(cd "$(dirname $BASH_SOURCE)/.."; pwd)

PATH=$PACKAGE_DIR/bin:$PATH

# source autocompletion
crane completion bash >> $HOME/.bashrc

unset PACKAGE_DIR

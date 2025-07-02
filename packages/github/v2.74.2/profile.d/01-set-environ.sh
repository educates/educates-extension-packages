PACKAGE_DIR=$(cd "$(dirname $BASH_SOURCE)/.."; pwd)

PATH=$PACKAGE_DIR/bin:$PATH

# source autocompletion
gh completion -s bash >> $HOME/.bashrc

unset PACKAGE_DIR
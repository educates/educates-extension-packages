#!/bin/bash

set -x
set -eo pipefail

PACKAGE_DIR=$(cd "$(dirname $BASH_SOURCE)/.."; pwd)

# Install extensions
echo "Starting time for installing vscode-java extensions" $(date)

## If $PLATFORM_ARCH is set to "arm64", use the arm64 versions of the extensions
if [[ "$PLATFORM_ARCH" == "arm64" ]]; then
    code-server --install-extension $PACKAGE_DIR/extensions/redhat.java-arm64/java-linux-arm64-1.42.0-561.vsix
else
    code-server --install-extension $PACKAGE_DIR/extensions/redhat.java-amd64/java-linux-x64-1.42.0-561.vsix
fi

code-server --install-extension $PACKAGE_DIR/extensions/vscjava.vscode-java-debug/vscjava.vscode-java-debug-0.58.2.vsix
code-server --install-extension $PACKAGE_DIR/extensions/vscjava.vscode-java-test/vscjava.vscode-java-test-0.43.1.vsix
code-server --install-extension $PACKAGE_DIR/extensions/vscjava.vscode-maven/vscjava.vscode-maven-0.44.0.vsix
code-server --install-extension $PACKAGE_DIR/extensions/vscjava.vscode-gradle/vscjava.vscode-gradle-3.15.0.vsix
code-server --install-extension $PACKAGE_DIR/extensions/vscjava.vscode-java-dependency/vscjava.vscode-java-dependency-0.24.1.vsix
code-server --install-extension $PACKAGE_DIR/extensions/vscjava.vscode-java-pack/vscjava.vscode-java-pack-0.29.2.vsix

# Stage the vscode java settings updates
cp -r $PACKAGE_DIR/settings.json ~/.local/share/code-server/User/settings.json

unset PACKAGE_DIR

echo "End time for installing vscode-java extensions" $(date)
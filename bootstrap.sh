#!/usr/bin/env sh
#
# bootstrap.sh aka install.sh aka setup.sh. "Bootstrap" is a fun name so lets use that!

# TODO: https://github.com/alrra/dotfiles/blob/main/src/os/install/macos/xcode.sh
#
echo "Installing Command Line Tools (CLT) for Xcode..."                                     
xcode-select --install &>/dev/null

#!/usr/bin/env sh
#
# bootstrap.sh aka install.sh aka setup.sh. "Bootstrap" is a fun name so lets use that!

# TODO: https://github.com/alrra/dotfiles/blob/main/src/os/install/macos/xcode.sh
#
echo "Installing Command Line Tools (CLT) for Xcode..."                                     
xcode-select --install &>/dev/null

# TODO: https://github.com/alrra/dotfiles/blob/main/src/os/install/macos/homebrew.sh
#
echo "Installing homebrew..."
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | sh

echo "Installing brew apps..."
brew install git
brew install mackup
brew install mas
brew install screenfetch

echo "Installing brew cask apps..."
brew cask install 1password
brew cask install istat-menus
brew cask install iterm2
brew cask install spotify
brew cask install spotmenu
brew cask install steam
#brew cask install the-unarchiver

echo "Installing App Store apps..."
mas install 411643860 # DaisyDisk
mas install 1090488118 # Gemini 2
mas install 1295203466 # Microsoft Remote Desktop

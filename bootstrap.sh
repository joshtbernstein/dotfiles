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
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing brew apps..."
brew install git
brew install mackup
brew install mas
brew install screenfetch
brew install zsh-autosuggestions
brew install zsh-syntax-highlighting

echo "Installing brew cask apps..."
brew tap homebrew/cask-drivers
brew cask install 1password
brew cask install fliqlo
brew cask install logi-options-plus
brew cask install istat-menus
brew cask install iterm2
brew cask install spotify
brew cask install steam
brew cask install synology-drive
brew cask install discord
#brew cask install the-unarchiver

echo "Installing App Store apps..."
mas install 411643860 # DaisyDisk
mas install 1090488118 # Gemini 2
mas install 1295203466 # Microsoft Remote Desktop

echo "Installing Oh My Zsh..."
curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh | sh

echo "Copying mackup config to ~..."
cp ./.mackup.cfg ~

mackup restore

echo "Installing Powerline Fonts"
git clone https://github.com/powerline/fonts.git
./fonts/setup.sh
rm -rf ./fonts

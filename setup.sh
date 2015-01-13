#!/bin/sh

if test ! $(which brew); then
	echo "Installing Homebrew..."
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	echo "Homebrew already installed."
fi

brew update

echo "Installing Homebrew utilities..."

bash osx_homebrew.bash

echo "Installing Homebrew Cask apps..."

bash osx_cask.bash

echo "Finalizing Homebrew configuration..."

brew update
brew upgrade
brew cleanup
brew cask cleanup

echo "Installing Ruby on Rails libraries..."

sh python_dependencies.sh

bash dotfiles.bash

echo "Configuring OS X settings..."
bash osx.bash

# Remove outdated dependencies
#brew update
#brew upgrade
#brew-cask
#brew cleanup
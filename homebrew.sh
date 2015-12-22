#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

echo "Installing Homebrew utilities"

brew install bash
brew install bash-completion
brew install zsh
brew install zsh-completions
brew install coreutils
brew install findutils
brew install moreutils
brew install vim --overwride-system-vi
brew install tmux
brew install rename
brew install trash
brew install ack
brew install curl
brew install wget
brew install reattach-to-user-namespace
brew install ctags --HEAD
brew install lighttpd
brew install tree
brew install htop
brew install watch
brew install fortune
brew install sloccount
brew install python
brew install pngcrush
brew install git
brew install git-extras
brew install git-flow
brew install imagemagick
brew install ffmpeg --with-fdk-aac --with-ffplay --with-freetype --with-libass --with-libquvi --with-libvorbis --with-libvpx --with-opus --with-x265
brew install lftp
brew install optipng
brew install pv
#brew install node
#brew install go
brew install base64
brew install dockutil
brew install nmap
brew install httpie
brew install mysql --client-only --universal
brew install postgresql
brew install webkit2png
brew install graphicsmagick
brew install ssh-copy-id

brew tap homebrew/dupes
brew install homebrew/dupes/grep

#echo "Installing Homebrew Cask apps..."

# Apps
#brew install caskroom/cask/brew-cask

# Essentials

#brew cask install onepassword
#brew cask install skype
#brew cask install dropbox
#brew cask install google-chrome
#brew cask install firefox
#brew cask install spotify
#brew cask install flash
#brew cask install the-unarchiver
#brew cask install vlc
#brew cask install odesk-team
#brew cask install on-the-job
#brew cask install transmission
#brew cask install java
#brew cask install knox

# Misc tools
#brew cask install appzapper
#brew cask install appcleaner
#brew cask install imageoptim
#brew cask install flux
#brew cask install mou
#brew cask install cakebrew
#brew cask install little-snitch
#brew cask install spectacle
#brew cask install wireshark
#brew cask install virtualbox
#brew cask install screenflick
#brew cask install transmit
#brew cask install xquartz

# Dev tools
#brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package && qlmanage -r
#brew cask install iterm2
#brew cask install sublime-text
#brew cask install sourcetree
#brew cask install snippets
#brew cask install quickradar
#brew cask install paw
#brew cask install simpholders
#brew cask install android-studio
#brew cask install codekit
#brew cask install sequel-pro
#brew cask install dash
#brew cask install cactus
#brew cask install vagrant
#brew cask install vagrant-manager
#brew cask install kaleidoscope
#brew cask install hex-fiend

# Design tools
#brew cask install sketch
#brew cask install colorpicker-skalacolor
#brew cask install inboard

echo "Finalizing Homebrew configuration..."

brew update
brew upgrade
brew cleanup
#brew cask cleanup

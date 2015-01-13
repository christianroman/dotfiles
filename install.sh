#!/bin/bash

#install zsh
echo 'Installing oh-my-zhs'

rm -rf $HOME/.oh-my-zsh
curl -L http://install.ohmyz.sh | sh

#symlink zsh prefs
rm $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Homebrew

if test ! $(which brew); then
	echo "Installing Homebrew..."
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	echo "Homebrew already installed."
fi

bash homebrew.sh

echo "Configuring OS X settings..."
bash osx.sh

# Install RVM and Ruby

[ ! -d $HOME/.rvm ] && (
  log "Installing RVM"
  \curl -sSL https://get.rvm.io | bash -s stable --ruby
)

[[ ! $(which bundler) ]] && (
  gem update --system
  gem install bundler --no-document --pre
  number_of_cores=$(sysctl -n hw.ncpu)
  bundle config --global jobs $((number_of_cores - 1))
 )

[[ ! $(which foreman) ]] &&
  curl -sLo /tmp/foreman.pkg http://assets.foreman.io/foreman/foreman.pkg && \
  sudo installer -pkg /tmp/foreman.pkg -tgt /
#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install homebrew packages
# brew install grc coreutils spark

brew doctor
brew update
brew upgrade

# Allows install apps with home-brew
brew install caskroom/cask/brew-cask

# Allows install beta versions
brew tap caskroom/versions

exit 0
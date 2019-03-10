#!/bin/sh

WHITE="\033[37m"
MAGENTA="\033[35m"

# Check Homebrew installation and install if not present on machine
if test ! $(which brew); then
  printf "${WHITE}Installing Homebrew${NORMAL}\n"
  eval "/usr/bin/ruby -e '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)'"
fi

# Update Homebrew if it's already installed
printf "${MAGENTA}Updating Homebrew${NORMAL}\n"
eval "brew update"

# Install Homebrew Cask
printf "\n{WHITE}Installing Homebrew Cask${NORMAL}\n"
eval "brew tap caskroom/cask"

eval "brew cleanup"

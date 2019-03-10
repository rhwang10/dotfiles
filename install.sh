#!/bin/bash

BLUE="\033[34m"
GREEN="\033[32m"
RED="\033[31m"
MAGENTA="\033[35m"


printf "\n${BLUE}Starting the installation${NORMAL}\n"

# Install XCode command line tools
printf "\n${GREEN}Installing XCode Command Line Tools${NORMAL}\n"
eval "xcode-select --install"

# Install NVM
printf "\n${GREEN}Installing NVM${NORMAL}\n"
eval "curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash"
eval "nvm install node --lts"
eval "nvm alias default node"

# Install Homebrew
printf "\n${GREEN}Installing Homebrew${NORMAL}\n"
eval "sh scripts/brew.sh"

# Install Oh My Zsh
printf "\n${BLUE}Installing Oh My Zsh${NORMAL}\n"
eval 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"'

# Browsers installations
eval "open https://www.google.com/chrome/"

# Communication software
eval "open https://slack.com/downloads/mac"
eval "open https://discordapp.com/download"

# Important software
eval "open https://www.spotify.com/us/download/mac/"

# Tools and system utilities
eval "open https://www.google.com/drive/download/"
eval "open https://bjango.com/mac/istatmenus/"
eval "open https://github.com/JohnCoates/Aerial"

# Open development tools installations
eval "open https://atom.io/"
eval "open https://www.iterm2.com/"
eval "open https://developer.apple.com/xcode/"

# Follow the instructions on GitHub to generate a new SSH key and add it to your Github account.
printf "\n${GREEN}Finished!${NORMAL}\n"
printf "\n${BLUE}Instructions for generating a new SSH key and adding the key to a GitHub account.${NORMAL}\n"

eval "open https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/#generating-a-new-ssh-key"
eval "open https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account"

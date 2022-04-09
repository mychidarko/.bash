#!/bin/bash

# install homebrew
if test ! $(which brew); then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Updating Homebrew..."
    brew update
fi

# Register aliases, functions, ohmyzsh stuff, ...
if [ -f "$HOME/.zshrc" ]; then
    echo "Configuring zsh..."
    echo 'source ~/.bash/.bash_aliases' >> ~/.zshrc
    echo 'source ~/.bash/bash_completions.sh' >> ~/.zshrc
    echo 'source ~/.bash/bash_functions.sh' >> ~/.zshrc
else 
    echo "Configuring bash..."
    echo 'source ~/.bash/.bash_aliases' >> ~/.bashrc
    echo 'source ~/.bash/bash_completions.sh' >> ~/.bashrc
    echo 'source ~/.bash/bash_functions.sh' >> ~/.bashrc
fi

echo "Configuration complted successfully!"
echo "Configuring git user..."

# set default git config
git config --global user.name "mychidarko"
git config --global user.email "mickdd22@gmail.com"
git config --global color.ui true

echo "Git configured successfully!"
echo "Installing important packages..."

# Install most used important packages
installables=(
    git
    wget
    ruby
    python
    node
    php
    flutter
    go
)

brew install ${installables[@]}

echo "PHP version: " && php --version
echo "Node version: " && node --version
echo "Npm version: " && npm --version

# Install yarn
npm install -g yarn

# setup folders
mkdir ~/Projects

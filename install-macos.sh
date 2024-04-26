#!/bin/bash

set -o errexit  # abort on nonzero exitstatus
set -o nounset  # abort on unbound variable
set -o pipefail # don't hide errors within pipes

# Install CommandLineTools
sudo rm -rf /Library/Developer/CommandLineTools
sudo xcode-select --install

# Install homebrew (https://brew.sh)
echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing base packages..."
brew bundle -v

# Install oh-my-zsh (unnatended install)
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Install zsh plugin: zsh-completions (https://github.com/zsh-users/zsh-completions)
echo "Installing zsh plugin: zsh-completions..."
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions

# Install zsh plugin: zsh-autosuggestions (https://github.com/zsh-users/zsh-autosuggestions)
echo "Installing zsh plugin: zsh-autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Install tmux plugin manager: tpm (https://github.com/tmux-plugins/tpm)
echo "Installing tmux plugin manager(tpm)..."
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

## Instal zsh plugin zsh-better-npm-completion (https://github.com/lukechilds/zsh-better-npm-completion)
echo "Installing zsh plugin: zsh-better-npm-completion..."
git clone https://github.com/lukechilds/zsh-better-npm-completion ~/.oh-my-zsh/custom/plugins/zsh-better-npm-completion

## Instal zsh plugin zsh-syntax-highlighting (https://github.com/zsh-users/zsh-syntax-highlighting)
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install powerlevel10k
echo "Installing powerlevel10k..."
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Install NVM (https://github.com/nvm-sh/nvm)
echo "Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

# Set mac defaults
echo "Setting macOS defaults..."

## Auto hide dock
defaults write com.apple.dock "autohide" -bool "true"

## Dock animation (scale)
defaults write com.apple.dock "mineffect" -string "scale"

## Finder - show hidden files
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"

## Finder - show path bar
defaults write com.apple.finder "ShowPathbar" -bool "false"

## Finder - keep folders on top
defaults write com.apple.finder "\_FXSortFoldersFirst" -bool "true"

## Finder empty bin every 30 days
defaults write com.apple.finder "FXRemoveOldTrashItems" -bool "true"

## Finder - show hard drives on destop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

## Menu bar - flash clock
defaults write com.apple.menuextra.clock "FlashDateSeparators" -bool "true"

## Misc - Repeat key when held down
defaults write NSGlobalDomain "ApplePressAndHoldEnabled" -bool "false"

## Hot corners
defaults write com.apple.dock wvous-tl-corner -int 2
defaults write com.apple.dock wvous-tr-corner -int 12
defaults write com.apple.dock wvous-br-corner -int 4
defaults write com.apple.dock wvous-bl-corner -int 3

# Repeat keys
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false # For VS Code
defaults delete -g ApplePressAndHoldEnabled

# Restart macOS UI
echo "Restarting macOS UI and Dock..."
killall Dock
killall SystemUIServer

# Create dotfiles symlinks using chezmoi
chezmoi init --apply --verbose https://github.com/otaviotech/dotfiles.git

GREEN='\033[0;32m'
NC='\033[0m' # No Color

echo -e "${GREEN}Success!${NC}\n"

echo "Restart your terminal and you are all set!"
echo -e "${GREEN}Happy Hacking!\n"

exit 0

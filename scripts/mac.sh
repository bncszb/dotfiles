brew install --cask rectangle
brew install --cask visual-studio-code
brew install --cask obsidian
brew install --cask google-chrome
brew install --cask messenger
brew install --cask discord
brew install --cask vlc
brew install --cask docker
brew install --cask zotero
brew install git-delta

brew install --cask iterm2
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.config/iterm2/custom_settings"
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true

git config --global user.email "bszabo96@gmail.com"
git config --global user.name "Bence Szabó"

defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 10

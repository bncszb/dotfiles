brew install rectangle
brew install visual-studio-code
brew install google-chrome
brew install vlc

brew install --cask iterm2
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.config/iterm2/custom_settings"
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true

git config --global user.email "bszabo96@gmail.com"
git config --global user.name "Bence Szabó"

defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 10

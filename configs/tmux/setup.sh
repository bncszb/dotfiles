echo "Setting up tmux"

echo "Installing tmux"
brew install tmux

echo "Linking tmux config"
ln tmux/.tmux.conf ~/.tmux.conf

# success message 
GREEN='\033[0;32m'
NC='\033[0m'
echo -e "${GREEN}tmux setup complete${NC}"
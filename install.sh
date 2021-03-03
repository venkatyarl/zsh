# Install Xcode tools
echo "Installing xcode-stuff"
echo "------------- Installing xcode-stuff -----------"
#xcode-select --install

# Homebrew items
echo "------------- Home Brew -----------"
if [[ ! $(which brew) ]]; then
    echo "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# update Homebrew receipes
brew update

# Install and set up git
#if [[ ! $(which git) ]]; then
    cd ~/Desktop
    mkdir newComputerSetup
    curl https://raw.githubusercontent.com/venkatyarl/zsh/main/setupGit.sh --output ~/Desktop/newComputerSetup/setupGit.sh
    source ~/Desktop/newComputerSetup/setupGit.sh
#fi

echo "Completed HomeBrew Setup"
echo "-----------------------------"
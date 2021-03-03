# Install Xcode tools
echo "------------- Installing xcode-stuff -----------"
#xcode-select --install

# Homebrew items
echo "------------- Home Brew -----------"
if [[ ! $(which brew) ]]; then
    echo "Installing Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    # update Homebrew receipes
    brew update
fi

# Install and set up git
if ! ls -al ~/Desktop | grep -q 'newComputerSetup'; then
    mkdir ~/Desktop/newComputerSetup

    curl https://raw.githubusercontent.com/venkatyarl/zsh/main/setupGit.sh --output ~/Desktop/newComputerSetup/setupGit.sh
    if (ls -al ~/Desktop/newComputerSetup | grep "setupGit") | grep -q 'setupGit'; then
        source ~/Desktop/newComputerSetup/setupGit.sh
    fi
fi


echo "Completed HomeBrew Setup"

echo "------------- Home Brew -----------"

echo "-----------------------------"
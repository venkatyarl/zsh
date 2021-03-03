
echo "------------- GIT Set up -----------"
# Install git
if [[ ! $(which git) ]]; then
    echo "Installing git"
    brew install git
fi

# Set up global variables
echo "Setting Global Git config values"
if (git config --list --show-origin | grep "user.name") | grep -q 'user.name'; then git config --global user.name "Venkat Yarlagadda"
fi
if (git config --list --show-origin | grep "user.email") | grep -q 'user.email'; then git config --global user.email "venkat.yarl@gmail.com"
fi
if (git config --list --show-origin | grep "init.defaultbranch") | grep -q 'init.defaultbranch'; then git config --global init.defaultBranch main
fi

# Create ssh key
if [ ! -f ~/.ssh/gitHubVenkat ]; then
  echo "Creating an SSH key for you..."
  ssh-keygen -f ~/.ssh/gitHubVenkat -t rsa -N "" -C "venkat.yarl@gmail.com"

  # Haven't cloned the git repo yet so just curl it down
  curl https://raw.githubusercontent.com/venkatyarl/zsh/main/ssh_config --output ~/.ssh/config

  ssh-add -K ~/.ssh/gitHubVenkat
  pbcopy < ~/.ssh/gitHubVenkat.pub

  osascript -e 'tell application (path to frontmost application as text) to display dialog "Press OK to open a browser for adding your new ~/.ssh/gitHubVenkat key to Github - it is copied to your clipboard" buttons {"OK"}'

  open "https://github.com/account/ssh"
  read -p "Press [Enter] key after you have added your SSH key to Github..."
fi
echo "------------------------------------"

# clone zsh script project
if ! ls -al ~ | grep -q 'projects'; then
    mkdir ~/projects
fi

# Clone Git zsh git repo
git@github.com:venkatyarl/zsh.git

# Clean up
source ~/projects/zsh/cleanup.sh
echo ""
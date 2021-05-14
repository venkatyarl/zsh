# Oh My ZSH Settings
export ZSH="/home/vinny/.oh-my-zsh"
ZSH_THEME="agnoster"

# plugins
plugins=(git mvn gradle brew web-search)
source $ZSH/oh-my-zsh.sh

# Load functions file
source ../helperScripts/loadScripts.sh
# Shell Alias
echo "Alias loaded"

# Alias Help function
# Displays all the alias created
function aliasHelp() {
	echo -e "
        -- Navigation --
        reload               : Reload zshrc
        ll			: ls -al

        -- Java --
        j8			: Change to Orache JDK 8
        j15			: Change to Open Jdk 15
	"
}


### Alias ###
alias reload="source ~/.zshrc; echo 'ZSH config reloaded from ~/.zshrc'"
alias ll="ls -al"

# Java
alias j8="export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_281.jdk/Contents/Home ; java -version"
alias j15="export JAVA_HOME=/usr/local/Cellar/openjdk/15.0.1 ; java -version"
alias javav="java -version"

# Zshrc functions
echo "Plugins Help Loaded"


# Displays all Plugins available for use
function pluginsHelp() {
	echo -e "
    pluginsHelp	    : Show help for zsh Plugins
    brewHelp        : Shows all the brew plugin aliases
    mvnHelp         : Shows all the mvn plugin aliases
    gitHelp         : Shows all the git plugin aliases
	"
}

printHelp() {
    cat $1 | awk -F $2 '
        BEGIN {
            OFS = "";
        }
        {
            $1 = "\033[34m" $1 "\033[0m";
            $2 = "\033[32m" $2 "\033[0m";
            $3 = "\033[33m" $3 "\033[0m";
            $4 = "\033[34m" $4 "\033[0m";
            $5 = "\033[35m" $5 "\033[0m";
            #print $1
            printf("%-30s%-50\s%-70\s\n",$1,$2,$3);
        }
    '
}
# Shows all zsh brew plugin help commands
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/brew
function brewHelp() {
    echo ""
    echo ${Light_Purple}Brew Alias: ${Purple}https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/brew${NC}
    printHelp helperScripts/pluginsHelpFiles/brew.csv "|"

}

# Shows all zsh maven plugin help commands
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/mvn
function mvnHelp() {
    echo ""
    echo ${Light_Purple}Maven Alias: ${Purple}https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/mvn${NC}
    printHelp helperScripts/pluginsHelpFiles/mvn.csv "|"
}

# Shows all zsh git plugin help commands
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git
function gitHelp() {
    echo ""
    echo ${Light_Purple}Git Alias: ${Purple}https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git${NC}
    printHelp helperScripts/pluginsHelpFiles/git.csv "|"
}

# Shows all zsh Web-search plugin help commands
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search
function webSearchHelp() {
    echo ""
    echo ${Light_Purple}Web Search Alias: ${Purple}https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search${NC}
    printHelp helperScripts/pluginsHelpFiles/webSearch.csv "|"
}
# Oh My ZSH Settings
export ZSH="/Users/venkat/.oh-my-zsh"
ZSH_THEME="agnoster"

# plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Export variables
export SPARK_HOME=~/projects/AWS_libs/spark-2.4.3-bin-hadoop2.8/
export SPARK_CONF_DIR=~/projects/AWS_libs/aws-glue-libs/conf
export PYTHONPATH="${SPARK_HOME}python/:${SPARK_HOME}python/lib/py4j-0.10.7-src.zip:~/projects/AWS_libs/aws-glue-libs/PyGlue.zip:/usr/bin/python3"
export JAVA_HOME=/usr/local/Cellar/openjdk/15.0.1

### Alias ###
alias ll="ls -al"

# Java
alias j15="export JAVA_HOME=/usr/local/Cellar/openjdk/15.0.1"
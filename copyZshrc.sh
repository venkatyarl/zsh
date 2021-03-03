FILE_BACKUP=~/.zshrc_backup
FILE_BACKUP_ORIGINAL=~/.zshrc_backup_original
FILE=~/.zshrc
SOURCE=.zshrc

if [[ -f "$SOURCE" ]]; then
    echo "$SOURCE is available"

    if [[ ! -f "$FILE_BACKUP_ORIGINAL" ]]; then
        echo "Original backup doesn't exist copy .zshrc to $FILE_BACKUP_ORIGINAL"
        cp -i $FILE $FILE_BACKUP_ORIGINAL
    fi
    echo "Here"
    echo "File renamed from $FILE to $FILE_BACKUP"
    cp -i $FILE $FILE_BACKUP
    ls -al ~
    if [[ -f "$FILE" ]]; then
        echo "$FILE exists."
        ls
        pwd
        cp .zshrc $FILE
    fi
fi

source $FILE
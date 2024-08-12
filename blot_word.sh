#!/bin/zsh

if [ "$#" -ne 2 ]; then
	echo "Usage: $0 <word> <definition>"
	exit 1
fi

WORD=$1
DEFINITION=$2
DATE=$(date +"%Y-%m-%d %H:%M:%S")
FILE="${WORD}000.md"
SCRIPT_DIR="$HOME/bin"
TEMPLATE="$SCRIPT_DIR/template.tmpl" #relative path to template.tmpl

# replace placeholders and create the file
sed -e "s/\[word\]/$WORD/g" \
    -e "s/\[definition\]/$DEFINITION/g" \
    -e "s/\[date\]/$DATE/g" \
    "$TEMPLATE" > "$FILE"
	
echo "File '$FILE' created with the template."

#!/bin/bash

# simple todo app
# author: austin witherow

DIR="$HOME/Dropbox/notes"

if [ ! -d "$DIR" ]; then
    mkdir -p "$DIR"
fi

echo "Subject:"
read SUBJECT
echo "Context":
read CONTEXT
echo "Note:"
read NOTE

FULLDIR="$DIR/$SUBJECT/$CONTEXT"

if [ ! -d "$FULLDIR" ]; then
    echo $FULLDIR
    mkdir -p "$FULLDIR/"
fi

FILE="$FULLDIR/notes.txt"

echo $(date): $NOTE >> "$FILE"
echo "Saved '$NOTE' at $FILE"

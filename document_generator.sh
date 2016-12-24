#!/bin/bash
# This script is intended to show how to build a document generator

DOCFILE="script_listing"

echo "#!/bin/more" > "$DOCFILE"

ls *.sh > templisting.txt

while IFS= read -r FILENAME; do
    if [ -f "$FILENAME" ]; then
        echo "======================================" >> "$DOCFILE"
        echo "SCRIPT NAME: $FILENAME" >> "$DOCFILE"
        echo "======================================" >> "$DOCFILE"
        echo ""
        echo "$(cat $FILENAME)" >> "$DOCFILE"
    fi
done < templisting.txt

chmod 755 "$DOCFILE"

rm templisting.txt

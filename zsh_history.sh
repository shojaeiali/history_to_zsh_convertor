#! /bin/sh

HISTORY_FILE="history_file.txt"
EDITED_HISTORY_FILE="edited_history_file.txt"
INITIAL_DATE="2021-08-13 00:00:00 EDT"

TIMESTAMP=`date -d "$INITIAL_DATE" +%s`
while IFS= read -r line
do
    tmp=`echo $line | cut -d ' ' -f 1 --complement`
    echo ": "$TIMESTAMP":0;$tmp" >> $EDITED_HISTORY_FILE
    TIMESTAMP=$((TIMESTAMP+1))
done < $HISTORY_FILE
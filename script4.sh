#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh /var/log/bootstrap.log
LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ -f "$LOGFILE" ]; then
    while IFS= read -r LINE; do
        if echo "$LINE" | grep -iq "$KEYWORD"; then
            COUNT=$((COUNT + 1))
        fi
    done < "$LOGFILE"
    echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
else
    echo "Error: File $LOGFILE not found."
    exit 1
fi

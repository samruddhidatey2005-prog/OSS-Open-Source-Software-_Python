#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4_log_analyzer.sh /var/log/syslog error

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found!"
    exit 1
fi

# Count occurrences
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Show last 5 matches
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5

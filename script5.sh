#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Concepts: read, string concatenation, file redirection

echo "Answer three questions to generate your personal manifesto."
echo

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Composing the paragraph and writing to file
echo "On $DATE, I, $(whoami), declare that $TOOL represents the essence of open source." > $OUTPUT
echo "To me, freedom means $FREEDOM. In this spirit, I commit to building $BUILD and sharing it with the community." >> $OUTPUT

echo "------------------------------------------"
echo "Manifesto saved to $OUTPUT"
echo "------------------------------------------"
cat $OUTPUT

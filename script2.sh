#!/bin/bash
# Script 2: FOSS Package Inspector
PACKAGE="grep"
echo "Inspecting Package: $PACKAGE"
if dpkg -s $PACKAGE > /dev/null 2>&1; then
    echo "Status: Installed"
    dpkg -s $PACKAGE | grep -E 'Version|License|Section'
    echo "Philosophy Note: This tool follows the Unix philosophy of 'doing one thing well'."
else
    echo "Package $PACKAGE not found."
fi

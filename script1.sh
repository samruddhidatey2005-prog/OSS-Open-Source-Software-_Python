#!/bin/bash
# Script 1: System Identity Report
echo "=========================================="
echo "       OPEN SOURCE AUDIT REPORT"
echo "=========================================="
echo "Student Name: Sneha Singh"
echo "Audit Subject: Linux Kernel"
echo "Kernel Version: $(uname -r)"
echo "Distribution: $(lsb_release -d | cut -f2)"
echo "License: GNU GPL v2"
echo "Date: $(date)"
echo "=========================================="

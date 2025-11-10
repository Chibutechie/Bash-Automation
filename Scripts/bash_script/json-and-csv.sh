#!/bin/bash

# ============================================================
# Script: move_files.sh
# Description:
#   This script copies all CSV and JSON files from a source 
#   directory into a designated directory (json-and-csv).
# ============================================================

# Define source and target directories
SOURCE="./my_csv"
TARGET="./destination_file"

# Inform user
echo "Starting file transfer process..."

# Create target directory if it doesn’t exist
mkdir -p "$TARGET"

# Copy CSV and JSON files
echo "Copying CSV files from $SOURCE to $TARGET..."
cp "$SOURCE"/*.csv "$TARGET"

echo "Copying JSON files from $SOURCE to $TARGET..."
cp "$SOURCE"/*.json "$TARGET"

# Completion message
echo "All CSV and JSON files have been successfully transferred to $TARGET."

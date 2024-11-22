#!/bin/bash

# Set the directory where screenshots will be saved
SAVE_DIR="$HOME/Screenshots"
mkdir -p "$SAVE_DIR"

# Generate a timestamped filename
FILENAME="$SAVE_DIR/screenshot_$(date +'%Y-%m-%d_%H-%M-%S').png"

# Capture the selected area with slurp and grim, save to file
grim -g "$(slurp)" "$FILENAME"

# Copy the screenshot to the clipboard
wl-copy < "$FILENAME"

# Notify the user (optional)
notify-send "Screenshot saved" "$FILENAME and copied to clipboard"

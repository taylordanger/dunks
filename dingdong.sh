#!/bin/bash

# Ensure we are in the desired directory
cd /path/to/your/directory

# Create a new folder named "dunks" if it doesn't exist
mkdir -p dunks

# Initialize a counter for .mp4 files
count=1

# Rename only .mp4 files to have a number as the title yeah otherwise it will just rename everything and ruin your whole life
for file in *.mp4; do
  if [ -f "$file" ]; then
    # Rename the .mp4 file
    mv "$file" "dunks/${count}.mp4"
    ((count++))
  fi
done

# Move non-.mp4 files to the "dunks" folder and then get dunkkkkkkkinnnnnnnnnnnnn ayo!!!
for file in *; do
  if [ -f "$file" ] && [ "${file##*.}" != "mp4" ]; then
    # Move the non-.mp4 file to "dunks" folder
    mv "$file" "dunks/"
  fi
done

# Create a txt file with the list of .mp4 files in numerical order
ls -1 dunks/*.mp4 > file_list.txt

echo "okay dude, Files have been renamed, non-.mp4 files moved to 'dunks' folder, and file_list.txt has been created."

# Move file_list.txt to the original directory
mv dunks/file_list.txt ./

echo "file_list.txt has been moved to the current directory, dude."

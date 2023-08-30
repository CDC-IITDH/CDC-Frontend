#!/bin/bash

# Loop through all JPG files in the current directory
for img_file in *.jpg; do
  if [ -f "$img_file" ]; then
    # Remove the "_resized" part from the filename
    new_filename="${img_file/_resized/}"
    
    # Rename the file
    mv "$img_file" "$new_filename"
    
    echo "Renamed $img_file to $new_filename"
  fi
done

echo "Filenames updated."

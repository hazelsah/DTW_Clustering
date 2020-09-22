#!/bin/bash
FILES="Phoebe_dataset4/videos/test/*.mp4"
for file in $FILES; do
    destination="Phoebe_dataset4/frames/${file:0:${#file}}";
    mkdir -p "$destination";
    ffmpeg -i "$file" "$destination/%d.jpeg";
done
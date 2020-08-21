#!/bin/bash
input=$1
while IFS= read -r line
do
	ffmpeg -i "$line" -preset slow -codec:a aac -b:a 128k -codec:v libx264 -pix_fmt yuv420p -b:v 2500k -minrate 1500k -maxrate 4000k -bufsize 5000k -vf scale=-1:720 "${line%.*}.mp4"
done < "$input"

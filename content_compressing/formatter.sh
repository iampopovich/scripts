#!/bin/bash
input=$1
while IFS= read -r line
do
	ffmpeg -i "$line" -preset slow -codec:a aac -b:a 128k -codec:v libx264 -pix_fmt yuv420p -b:v 2500k -minrate 1500k -maxrate 4000k -bufsize 5000k -vf scale=-1:720 "${line%.*}.mp4"
done < "$input"

#presets
# MP4 - 1080p
# ffmpeg -i input.mov -preset slow -codec:a libfdk_aac -b:a 128k -codec:v libx264 -pix_fmt yuv420p -b:v 4500k -minrate 4500k -maxrate 9000k -bufsize 9000k -vf scale=-1:1080 output.mp4

# MP4 - 720p
# ffmpeg -i input.mov -preset slow -codec:a libfdk_aac -b:a 128k -codec:v libx264 -pix_fmt yuv420p -b:v 2500k -minrate 1500k -maxrate 4000k -bufsize 5000k -vf scale=-1:720 output.mp4

# MP4 - 480p
# ffmpeg -i input.mov -preset slow -codec:a libfdk_aac -b:a 128k -codec:v libx264 -pix_fmt yuv420p -b:v 1000k -minrate 500k -maxrate 2000k -bufsize 2000k -vf scale=854:480 output.mp4

# MP4 - 360p
# ffmpeg -i input.mov -preset slow -codec:a libfdk_aac -b:a 128k -codec:v libx264 -pix_fmt yuv420p -b:v 750k -minrate 400k -maxrate 1000k -bufsize 1500k -vf scale=-1:360 output.mp4

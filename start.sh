#!/bin/bash

echo "Rendering image"

if [ -z "$ROTATE" ]; then
    ROTATE=0
fi

if [ -n "$URL" ]; then
  echo "Downloading: ${URL}"
  wget "${URL}" images/web-image.jpg
  IMAGE="web-image.jpg"
fi

convert images/${IMAGE-image.png} -rotate $ROTATE images/rotated.png
fbi -d /dev/fb1 -T 1 -noverbose -a images/rotated.png

while true; do
    sleep 1
done

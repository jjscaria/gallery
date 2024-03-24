#! /bin/bash
echo "Transferring images..."
cp images/* images/fulls 2>/dev/null
cp images/fulls/* images/thumbs 2>/dev/null
echo "Images transferred"
rm images/*.jpg 2>/dev/null
rm images/*.JPG 2>/dev/null
rm images/*.png 2>/dev/null
echo "Generating thumbnails..."
for f in images/thumbs/*; do convert "$f" -resize 510 "$f"; done 
echo "Thumbnails generated"

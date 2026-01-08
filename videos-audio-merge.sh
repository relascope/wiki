#!/usr/bin/env bash

# extract audio from all videos in current directory and subdirectory
# combines them into one file: 
# combinedAudio.wav

set -e

OUT="combinedAudio.wav"
TMPDIR="$(mktemp -d)"

# Adjust extensions if needed
find . -type f \( -iname "*.mp4" -o -iname "*.mov" -o -iname "*.webm" -o -iname "*.mkv" -o -iname "*.avi" \) \
| sort \
| while read -r video; do
    if ffprobe -v error -select_streams a -show_entries stream=index \
       -of csv=p=0 "$video" | grep -q .; then
        base="$(basename "$video")"
        ffmpeg -y -i "$video" -vn -acodec pcm_s16le "$TMPDIR/$base.wav"
    else
        echo "Skipping (no audio): $video"
    fi
done


# Create concat list
for f in "$TMPDIR"/*.wav; do
    echo "file '$f'"
done > "$TMPDIR/list.txt"

# Concatenate
ffmpeg -y -f concat -safe 0 -i "$TMPDIR/list.txt" -c copy "$OUT"

rm -rf "$TMPDIR"
echo "Done: $OUT"


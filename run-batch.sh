#!/bin/bash
# set -euxo pipefail

inputDir="/Users/tonni/Documents/sign_similarity/datasets/AUTSL/train_001_25fps"
outputDir="/Users/tonni/Documents/sign_similarity/datasets/AUTSL/vtt"

for entry in "$inputDir"/*.mp4; do
  echo "$entry"
  python demo/demo.py --video_path "$entry" --save_path "$outputDir" --generate_vtt
done

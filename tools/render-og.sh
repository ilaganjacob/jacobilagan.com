#!/bin/sh
# Renders tools/og-image.html to public/og-image.png (1200x630) with headless Chrome.
set -e
cd "$(dirname "$0")/.."
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
"$CHROME" --headless=new --disable-gpu --hide-scrollbars --force-device-scale-factor=1 \
  --window-size=1200,630 --screenshot="$PWD/public/og-image.png" "file://$PWD/tools/og-image.html"

#!/bin/bash
set -e

DOWNLOAD_DIR="${HOME}/storage/downloads"

link="$(termux-clipboard-get)"

if [ -z "$link" ]
then
  termux-toast "Link is not found."
  exit 1
fi

youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4' "${link}" -o "${DOWNLOAD_DIR}/%(title)s.%(ext)s"

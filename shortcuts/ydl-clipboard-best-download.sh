#!/bin/bash
set -e

DOWNLOAD_DIR="${HOME}/storage/downloads"

link="$(termux-clipboard-get)"

if [ -z "$link" ]
then
  termux-toast "Link is not found."
  exit 1
fi

youtube-dl -f best "${link}" -o "${DOWNLOAD_DIR}/%(title)s.%(ext)s"

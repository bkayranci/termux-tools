#!/bin/bash
set -e

DOWNLOAD_DIR="${HOME}/storage/downloads"

link="$(termux-clipboard-get)"

if [ -z "$link" ]
then
  termux-toast "Link is not found."
  exit 1
fi

if ! command -v ffmpeg &> /dev/null
then
  apt install -y ffmpeg
fi

youtube-dl -x --audio-format mp3 "${link}" -o "${DOWNLOAD_DIR}/%(title)s.%(ext)s"

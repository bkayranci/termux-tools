#!/bin/bash
set -e

DOWNLOAD_DIR="${HOME}/storage/downloads"

echo "Enter link:"
read -r link

if [ -z "$link" ]
then
  termux-toast "Link is not found."
  exit 1
fi

youtube-dl -F "${link}"

echo "Choose a media type:"
read -r media_type

if [ -z "$media_type" ]
then
  termux-toast "media_type is not found."
  exit 1
fi

youtube-dl -f "${media_type}" "${link}" -o "${DOWNLOAD_DIR}/%(title)s.%(ext)s"

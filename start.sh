#!/bin/bash

if [ -z "$UPSTREAM_REPO" ]; then
  echo "Cloning main Repository"
  git clone https://github.com/skcreator7/filterbot.git /filterbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO"
  git clone "$UPSTREAM_REPO" /filterbot
fi

# Move to the directory safely
cd /filterbot || exit 1

# Install Python dependencies
pip3 install -U -r requirements.txt

# Start the application (gunicorn and main.py) in background
echo "Starting Bot...."
gunicorn app:app & python3 main.py &

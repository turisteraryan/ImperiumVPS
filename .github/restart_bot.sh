#!/bin/bash

# The name of your bot process (adjust this to match your process name)
BOT_NAME="bot"  # Change this to your bot's actual process name

# Check if the bot process is running
if ! pgrep -f "$BOT_NAME" > /dev/null; then
  echo "Bot is not running. Triggering workflow restart..."
  
  # Trigger the workflow using GitHub CLI
  gh workflow run bot_deploy.yml
else
  echo "Bot is running fine."
fi

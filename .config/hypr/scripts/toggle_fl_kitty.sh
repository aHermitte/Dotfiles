#!/bin/bash

# Check if a kitty terminal with class floating_kitty is running
if pgrep -f "kitty.*--class floating_kitty" > /dev/null; then
  pkill -f floating_kitty
else
  # Launch a new kitty terminal with class floating_kitty
  kitty --class floating_kitty
fi


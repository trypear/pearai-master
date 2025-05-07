#!/bin/bash

# setup-app-dev.sh
# Master script to spin up development environments for PearAI app, submodule, and Roo code
# This script launches separate terminals for each component

# Store the root directory
ROOT_DIR="$(pwd)"

# Function to display messages with formatting
print_message() {
  echo -e "\n\033[1;36m==>\033[0m \033[1m$1\033[0m"
}

print_message "Starting development environments for PearAI components..."

# Open terminal for PearAI app
print_message "Starting PearAI app development environment..."
osascript -e "tell application \"Terminal\"
    do script \"cd '$ROOT_DIR/pearai-app' && ./scripts/pearai/install-dependencies.sh && echo 'PearAI app development environment is running'\"
end tell"

# Open terminal for PearAI submodule
print_message "Starting PearAI submodule development environment..."
osascript -e "tell application \"Terminal\"
    do script \"cd '$ROOT_DIR/pearai-submodule' && ./scripts/install-and-build.sh && echo 'PearAI submodule development environment is running'\"
end tell"

# Open terminal for PearAI-Roo-Code
print_message "Starting PearAI-Roo-Code development environment..."
osascript -e "tell application \"Terminal\"
    do script \"cd '$ROOT_DIR/PearAI-Roo-Code' && npm run install:all && echo 'PearAI-Roo-Code development environment is running'\"
end tell"

print_message "All development environments have been started! 🎉"
echo "Check the opened terminals for each component's status."
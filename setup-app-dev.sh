#!/bin/bash

# setup-app-dev.sh
# Master script to install all dependencies for PearAI app, submodule, and Roo code
# This script runs all necessary installation commands in sequence

set -e  # Exit immediately if a command exits with a non-zero status

# Function to display messages with formatting
print_message() {
  echo -e "\n\033[1;36m==>\033[0m \033[1m$1\033[0m"
}

# Function to handle errors
handle_error() {
  echo -e "\n\033[1;31mERROR: $1\033[0m"
  exit 1
}

# Store the root directory
ROOT_DIR="$(pwd)"

# Step 1: Install PearAI-Roo-Code dependencies
print_message "Installing PearAI-Roo-Code dependencies..."
cd "$ROOT_DIR/PearAI-Roo-Code" || handle_error "Could not navigate to PearAI-Roo-Code directory"
npm run install:all || handle_error "Failed to install PearAI-Roo-Code dependencies"
print_message "PearAI-Roo-Code dependencies installed successfully!"

# Step 2: Install and build PearAI submodule
print_message "Installing and building PearAI submodule..."
cd "$ROOT_DIR/pearai-submodule" || handle_error "Could not navigate to pearai-submodule directory"
./scripts/install-and-build.sh || handle_error "Failed to install and build PearAI submodule"
print_message "PearAI submodule installed and built successfully!"

# Step 3: Install PearAI app dependencies
print_message "Installing PearAI app dependencies..."
cd "$ROOT_DIR/pearai-app" || handle_error "Could not navigate to pearai-app directory"
npm install || handle_error "Failed to install PearAI app dependencies"
print_message "PearAI app dependencies installed successfully!"

# Return to root directory
cd "$ROOT_DIR" || handle_error "Could not navigate back to root directory"

print_message "All installations completed successfully! 🎉"
echo "The PearAI app, submodule, and Roo code are now set up and ready for development."
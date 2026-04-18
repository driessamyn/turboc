#!/bin/bash
#
# OpenCode Ultraplan Setup Script
# Creates symlinks to make agents and skills available globally
#

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_DIR="$HOME/.config/opencode"

echo "Setting up OpenCode Ultraplan..."
echo "Script directory: $SCRIPT_DIR"
echo "Config directory: $CONFIG_DIR"

# Validate that the config directory parent is writable and the directory itself is writable
PARENT_DIR="$(dirname "$CONFIG_DIR")"
if [ -d "$CONFIG_DIR" ]; then
  if [ ! -w "$CONFIG_DIR" ]; then
    echo "Error: $CONFIG_DIR exists but is not writable." >&2
    exit 1
  fi
else
  mkdir -p "$CONFIG_DIR" || { echo "Error: Could not create $CONFIG_DIR"; exit 1; }
fi

echo "Creating agents symlinks..."
if ln -sfn "$SCRIPT_DIR/agents" "$CONFIG_DIR/agents"; then
  echo "Linked agents: $CONFIG_DIR/agents";
else
  echo "Error: Failed to create symlink for agents" >&2
  exit 1
fi

echo "Creating skills symlinks..."
if ln -sfn "$SCRIPT_DIR/skills" "$CONFIG_DIR/skills"; then
  echo "Linked skills: $CONFIG_DIR/skills";
else
  echo "Error: Failed to create symlink for skills" >&2
  exit 1
fi

# Optional opencode.json (commented out - can enable per-project)
# if ln -sfn "$SCRIPT_DIR/opencode.json" "$CONFIG_DIR/opencode.json"; then
#   echo "Linked opencode.json";
# else
#   echo "Warning: Could not link opencode.json" >&2
# fi

echo ""
echo "Setup complete!" 
echo ""
echo "Agents linked: $CONFIG_DIR/agents"
echo "Skills linked: $CONFIG_DIR/skills"
echo ""
echo "To use:"
echo "  1. Restart OpenCode"
echo "  2. Use @architect, @critic, @implementer, @explorer"
echo "  3. Or use /agent <name> to switch agents"
echo ""
echo "To update: run this script again (git pull && ./setup.sh)"

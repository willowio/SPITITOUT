#!/usr/bin/env bash

set -e

INSTALL_DIR="${HOME}/.local/bin"
INSTALL_PATH="${INSTALL_DIR}/spititout"
SCRIPT_URL="https://raw.githubusercontent.com/willowio/spititout/main/spititout"

mkdir -p "$INSTALL_DIR"
curl -fsSL "$SCRIPT_URL" -o "$INSTALL_PATH"
chmod +x "$INSTALL_PATH"

printf '\n'
printf 'SPITITOUT is ready to use.\n'
printf 'Installed to: %s\n\n' "$INSTALL_PATH"

if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
    printf 'Add this to ~/.zshrc:\n'
    printf 'export PATH="$HOME/.local/bin:$PATH"\n'
else
    printf 'Run: spititout\n'
fi

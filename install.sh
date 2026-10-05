#!/usr/bin/env bash

set -e

INSTALL_DIR="${HOME}/.local/bin"
INSTALL_PATH="${INSTALL_DIR}/spititout"
SCRIPT_URL="https://raw.githubusercontent.com/willowio/SPITITOUT/main/spititout"

mkdir -p "$INSTALL_DIR"

if ! curl -fsSL "$SCRIPT_URL" -o "$INSTALL_PATH"; then
    rm -f "$INSTALL_PATH"
    printf 'SPITITOUT could not be installed.\n' >&2
    exit 1
fi

chmod +x "$INSTALL_PATH"

printf '\nSPITITOUT installed.\n'
printf 'Location: %s\n\n' "$INSTALL_PATH"

if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
    printf 'Add this to ~/.zshrc:\n\n'
    printf 'export PATH="$HOME/.local/bin:$PATH"\n\n'
    printf 'Then restart your shell and run:\n\n'
    printf 'spititout\n'
else
    printf 'Run: spititout\n'
fi

printf '\n'

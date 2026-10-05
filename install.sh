```bash
#!/usr/bin/env bash

set -e

INSTALL_DIR="${HOME}/.local/bin"
INSTALL_PATH="${INSTALL_DIR}/spititout"
SCRIPT_URL="https://raw.githubusercontent.com/willowio/SPITITOUT/main/spititout"

printf '\n'
printf 'SPITITOUT\n'
printf '%s\n' '────────────────────────────────────────────────────────────'
printf 'installing...\n\n'

mkdir -p "$INSTALL_DIR"

if ! curl -fsSL "$SCRIPT_URL" -o "$INSTALL_PATH"; then
    rm -f "$INSTALL_PATH"
    printf '\nSPITITOUT could not be installed.\n' >&2
    exit 1
fi

chmod +x "$INSTALL_PATH"

printf 'installed to: %s\n\n' "$INSTALL_PATH"

if [[ ":$PATH:" != *":$INSTALL_DIR:"* ]]; then
    printf 'Your shell does not have ~/.local/bin in PATH yet.\n\n'
    printf 'Add this to ~/.zshrc:\n\n'
    printf '  export PATH="$HOME/.local/bin:$PATH"\n\n'
    printf 'Then restart your shell and run:\n\n'
    printf '  spititout\n'
else
    printf 'run:\n\n'
    printf '  spititout\n'
fi

printf '\n'
```

#!/bin/bash
# Session initialization hook for ACE vault
# Sets up environment variables for the Claude Code session

# Set vault path (defaults to current directory)
export VAULT_PATH="${VAULT_PATH:-$(pwd)}"

# Date variables for daily operations
export TODAY=$(date +%Y-%m-%d)
export YESTERDAY=$(date -v-1d +%Y-%m-%d 2>/dev/null || date -d "yesterday" +%Y-%m-%d)
export CURRENT_WEEK=$(date +%Y-W%V)

# ACE Framework paths
export DAILY_NOTE="$VAULT_PATH/calendar/daily/$TODAY.md"
export INBOX_PATH="$VAULT_PATH/+/notes"
export EFFORTS_ON="$VAULT_PATH/efforts/on"
export EFFORTS_ONGOING="$VAULT_PATH/efforts/ongoing"

# Verify vault structure
if [ ! -f "$VAULT_PATH/CLAUDE.md" ]; then
    echo "Note: Not in a vault root directory (no CLAUDE.md found)"
fi

# Output session info
echo "PKM Session initialized"
echo "  Vault: \${cwd}"
echo "  Today: $TODAY"

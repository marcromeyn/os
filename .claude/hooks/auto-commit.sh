#!/bin/bash
# Auto-commit hook for vault changes
# Called after Write/Edit operations on vault files

VAULT_PATH="${VAULT_PATH:-$(pwd)}"
MODIFIED_FILE="${1:-unknown}"

# Only run if auto-commit is enabled
if [ "${GIT_AUTO_COMMIT}" != "true" ]; then
    exit 0
fi

cd "$VAULT_PATH" || exit 0

# Check if this is a git repository
if [ ! -d .git ]; then
    exit 0
fi

# Check if there are changes to commit
if git diff --quiet && git diff --staged --quiet; then
    exit 0
fi

# Generate commit message based on file location (ACE framework)
TIMESTAMP=$(date +"%Y-%m-%d %H:%M")

if [[ "$MODIFIED_FILE" == *"calendar/daily"* ]]; then
    MSG="Daily note update - $TIMESTAMP"
elif [[ "$MODIFIED_FILE" == *"calendar/periodic"* ]]; then
    MSG="Periodic review - $TIMESTAMP"
elif [[ "$MODIFIED_FILE" == *"calendar/meetings"* ]]; then
    MSG="Meeting notes - $TIMESTAMP"
elif [[ "$MODIFIED_FILE" == *"efforts/on"* ]]; then
    EFFORT=$(basename "$MODIFIED_FILE" .md)
    MSG="Update active effort: $EFFORT - $TIMESTAMP"
elif [[ "$MODIFIED_FILE" == *"efforts/ongoing"* ]]; then
    EFFORT=$(basename "$MODIFIED_FILE" .md)
    MSG="Update ongoing effort: $EFFORT - $TIMESTAMP"
elif [[ "$MODIFIED_FILE" == *"efforts/archive"* ]]; then
    EFFORT=$(basename "$MODIFIED_FILE" .md)
    MSG="Archive effort: $EFFORT - $TIMESTAMP"
elif [[ "$MODIFIED_FILE" == *"atlas/ideas"* ]]; then
    IDEA=$(basename "$MODIFIED_FILE" .md)
    MSG="Update idea: $IDEA - $TIMESTAMP"
elif [[ "$MODIFIED_FILE" == *"atlas/sources"* ]]; then
    SOURCE=$(basename "$MODIFIED_FILE" .md)
    MSG="Update source: $SOURCE - $TIMESTAMP"
elif [[ "$MODIFIED_FILE" == *"+/notes"* ]]; then
    MSG="Inbox capture - $TIMESTAMP"
elif [[ "$MODIFIED_FILE" == *"x/templates"* ]]; then
    MSG="Update template - $TIMESTAMP"
else
    MSG="Vault update - $TIMESTAMP"
fi

# Stage and commit
git add .
git commit -m "$MSG" --quiet 2>/dev/null

if [ $? -eq 0 ]; then
    echo "Auto-committed: $MSG"
fi

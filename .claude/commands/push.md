---
description: Stage, commit, and push vault changes to Git with smart commit messages
---

# Push Command

Automate Git workflow to save vault notes with meaningful commit messages.

## Instructions

1. Check Git status for changes
2. If no changes, inform user and exit
3. Analyze changed files to generate smart commit message
4. Stage all changes
5. Create commit with generated or provided message
6. Push to remote (if configured)

## Smart Commit Messages

Generate messages based on changed files:

| Changed Location | Message Pattern |
|-----------------|-----------------|
| `calendar/daily/` | "Daily note: YYYY-MM-DD" |
| `calendar/periodic/` | "Weekly review: Week NN" |
| `efforts/on/` | "Update effort: [name]" |
| `efforts/archive/` | "Archive effort: [name]" |
| `atlas/ideas/` | "Add idea: [name]" |
| `atlas/sources/` | "Add source: [name]" |
| `+/notes/` | "Capture notes" |
| Multiple areas | "Vault update: [summary]" |

## Commit Format

```
[YYYY-MM-DD HH:MM] <message>

Files changed:
- <list of changed files>
```

## Usage

Without message (auto-generate):
```
/push
```

With custom message:
```
/push "Completed weekly review and archived project"
```

## Safety

- Never commit files in `.obsidian/workspace*` (transient)
- Warn if committing files in `x/attachments/` (large files)
- Check for uncommitted CLAUDE.local.md (should be gitignored)

## Git Commands

```bash
git add .
git commit -m "<message>"
git push origin main
```

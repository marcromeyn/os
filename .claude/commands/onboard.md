---
description: Load vault context and CLAUDE.md files for comprehensive understanding
---

# Onboard Command

Load all context files to provide Claude with comprehensive understanding of the vault.

## Instructions

1. Read the root `CLAUDE.md` for vault conventions
2. Read `CLAUDE.local.md` if it exists (personal overrides)
3. Scan the vault structure to understand current state
4. Read recent daily notes (last 3 days) for current context
5. Read active efforts from `efforts/on/`
6. Check inbox status at `+/notes/`
7. Summarize current state

## Files to Read

### Always Read
- `CLAUDE.md` - Vault structure and conventions
- `home.md` - Navigation hub
- `efforts/maps/dashboard.md` - Effort overview

### If Present
- `CLAUDE.local.md` - Personal preferences
- Recent daily notes from `calendar/daily/`
- Active efforts from `efforts/on/`

### Scan
- `+/notes/` - Inbox item count
- `efforts/on/` - Active effort count
- `efforts/ongoing/` - Ongoing effort count

## Output Summary

```markdown
## Vault Context Loaded

### Structure: ACE Framework
- Atlas: Ideas and sources
- Calendar: Daily notes and meetings
- Efforts: Energy-based work management

### Current State
- Daily notes: [count] in last 7 days
- Active efforts (on): [count]
- Ongoing efforts: [count]
- Inbox items: [count]

### Recent Activity
- Last daily note: [date]
- Most recent effort update: [name]

### Ready to Help With
- Daily planning (`/daily`)
- Weekly review (`/weekly`)
- Inbox processing
- Effort management
- Note organization
```

## Context for Claude

After onboarding, Claude should understand:
- The ACE framework structure
- Where different note types live
- Current active efforts
- Recent daily context
- Inbox status

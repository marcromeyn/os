---
description: Create or open today's daily note in the ACE vault
---

# Daily Note Command

Create today's daily note from the template, or work with it if it already exists.

## Instructions

1. Check if today's daily note exists at `calendar/daily/YYYY-MM-DD.md`
2. If it doesn't exist:
   - Read the template from `x/templates/daily.md`
   - Create the note with today's date
   - Replace template variables:
     - `{{date}}` → Today's date (YYYY-MM-DD)
     - `{{date:format}}` → Formatted date (e.g., `{{date:dddd, MMMM D, YYYY}}`)
     - `{{yesterday}}` → Yesterday's date for linking
     - `{{tomorrow}}` → Tomorrow's date for linking
3. If it exists:
   - Read the current note
   - Offer to help with daily planning or reflection

## File Location

- Daily notes: `calendar/daily/YYYY-MM-DD.md`
- Template: `x/templates/daily.md`

## After Creation

Ask the user:
- "What's your ONE focus for today?"
- "Any tasks to carry forward from yesterday?"
- "What efforts need attention today?"

Link relevant active efforts from `efforts/on/` and `efforts/ongoing/`.

## Example Output

After creating:
```
Created daily note: calendar/daily/2026-01-08.md

What's your main focus for today?
```

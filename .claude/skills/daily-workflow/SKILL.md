---
name: daily-workflow
description: Morning routine, midday check-in, and evening shutdown workflows. Structure daily planning, task review, and end-of-day reflection. Use for daily productivity routines.
---

# Daily Workflow Skill

Structured workflows for daily productivity in an ACE-framework vault.

## Workflows

### Morning Routine

1. **Create/Open Daily Note**
   - Check if `calendar/daily/YYYY-MM-DD.md` exists
   - Create from `x/templates/daily.md` if needed
   - Review yesterday's incomplete tasks

2. **Set Today's Focus**
   - Identify ONE Big Thing for today
   - Review active efforts (`efforts/on/`)
   - Check calendar for meetings

3. **Plan Time Blocks**
   - Morning: Deep work
   - Midday: Meetings/collaboration
   - Afternoon: Tasks/admin
   - Evening: Reflection

4. **Quick Inbox Check**
   - Scan `+/notes/` for urgent items
   - Note count for later processing

### Midday Check-in

1. **Progress Review**
   - Check morning tasks completed
   - Adjust afternoon priorities
   - Note any blockers

2. **Energy Check**
   - Physical energy level
   - Mental clarity
   - Adjust remaining tasks if needed

### Evening Shutdown

1. **Capture Loose Ends**
   - Any open items → `+/notes/`
   - Incomplete tasks → note for tomorrow

2. **Daily Reflection**
   - What went well?
   - What could improve?
   - What did I learn?

3. **Tomorrow's Setup**
   - Set tomorrow's ONE Big Thing
   - Move completed tasks
   - Clear mental space

## File Locations

- Daily notes: `calendar/daily/YYYY-MM-DD.md`
- Template: `x/templates/daily.md`
- Active efforts: `efforts/on/`
- Inbox: `+/notes/`

## Properties for Daily Notes

```yaml
---
date: YYYY-MM-DD
tags:
  - daily
energy: 1-10
mood: word
focus: "ONE Big Thing"
---
```

## Integration

Use with:
- `/daily` command for note creation
- Goal Aligner agent for alignment check
- Productivity Coach for accountability

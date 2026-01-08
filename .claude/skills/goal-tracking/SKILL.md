---
name: goal-tracking
description: Track progress toward goals through efforts. Calculate completion percentages, surface stalled efforts, connect daily tasks to objectives. Use for goal reviews and progress tracking.
---

# Goal Tracking Skill

Track progress through the ACE effort system.

## Effort-Based Goal Tracking

In the ACE framework, goals are tracked through **Efforts** - energy-based work items that flow between states:

| State | Folder | Description |
|-------|--------|-------------|
| On | `efforts/on/` | Active focus - high energy |
| Ongoing | `efforts/ongoing/` | Continuous - steady energy |
| Simmering | `efforts/simmering/` | Back-burner - low energy |
| Sleeping | `efforts/sleeping/` | Future - no energy |
| Archive | `efforts/archive/` | Completed |

## Progress Tracking

### Effort Properties
```yaml
---
date: YYYY-MM-DD
tags: []
energy: on|ongoing|simmering|sleeping
area: life-area
due: YYYY-MM-DD
progress: 0-100
---
```

### Calculating Progress

1. **Count efforts by state:**
   - Active (on + ongoing)
   - Inactive (simmering + sleeping)
   - Completed (archive)

2. **Track daily mentions:**
   - Scan daily notes for effort links
   - Calculate activity frequency

3. **Identify stalls:**
   - "On" efforts with no activity > 7 days
   - "Ongoing" efforts with no activity > 14 days

## Reports

### Weekly Progress Report
```markdown
## Effort Progress - Week of [DATE]

### Active Efforts (On)
| Effort | Progress | Last Activity | Status |
|--------|----------|---------------|--------|
| [[effort]] | X% | YYYY-MM-DD | On track/Stalled |

### Movement This Week
- Completed: N efforts → archive
- Started: N new efforts
- State changes: [list]

### Attention Needed
- [Effort] - on track but no activity 5 days
- [Effort] - consider moving to simmering
```

### Effort Lifecycle
```
Idea captured → sleeping/
  ↓ (ready to start)
Activated → on/
  ↓ (continuous)
Routinized → ongoing/
  ↓ (deprioritize)
Paused → simmering/
  ↓ (complete)
Finished → archive/
```

## Dashboard Integration

Update `efforts/maps/dashboard.md` with:
- Effort counts by state
- Recent completions
- Stalled effort warnings

## Integration

Use with:
- Goal Aligner agent for deep analysis
- Weekly Reviewer for regular check-ins
- `/weekly` command for reviews

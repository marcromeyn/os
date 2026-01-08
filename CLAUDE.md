# Ideaverse Vault

Personal knowledge management system using the ACE framework (Atlas, Calendar, Efforts) inspired by Nick Milo's Linking Your Thinking methodology.

## Vault Structure

```
vault-root/
├── home.md              # Central navigation hub - start here
├── +/                   # INBOX - Quick capture & processing
│   ├── drafts/          # Work in progress
│   ├── notes/           # New notes to process
│   ├── focus/           # Temporary focus folders
│   ├── maps/            # Inbox navigation
│   └── views/           # Bases for inbox
├── atlas/               # KNOWLEDGE - Ideas & sources
│   ├── ideas/           # Concept notes ("dots")
│   ├── sources/         # Books, articles, videos, courses
│   ├── maps/            # Maps of Content (MOCs)
│   └── views/           # Bases for knowledge browsing
├── calendar/            # TIME - Daily notes & meetings
│   ├── daily/           # Daily notes (YYYY-MM-DD.md)
│   ├── periodic/        # Weekly, monthly, quarterly reviews
│   ├── meetings/        # Meeting notes
│   ├── logs/            # Journals and logs
│   ├── maps/            # Calendar navigation
│   └── views/           # Bases for time views
├── efforts/             # ACTION - Energy-based work management
│   ├── on/              # Active focus (high energy)
│   ├── ongoing/         # Continuous work (steady energy)
│   ├── simmering/       # Back-burner (low energy)
│   ├── sleeping/        # Future/inactive (no energy)
│   ├── archive/         # Completed efforts
│   ├── maps/            # Efforts navigation (dashboard.md)
│   └── views/           # Bases for effort tracking
├── x/                   # EXTRAS - Support files
│   ├── templates/       # Note templates
│   ├── attachments/     # Images, PDFs
│   └── scripts/         # CSS, scripts
└── code/                # Git submodules (excluded from Obsidian)
```

## Key Concepts

### ACE Framework
- **Atlas** (Knowledge): Where ideas and sources live. Ask: "Where would you like to go?"
- **Calendar** (Time): Where time-based notes live. Ask: "What's on your mind?"
- **Efforts** (Action): Where active work lives. Ask: "What can you work on?"

### Efforts (Energy-Based Work)
Instead of rigid projects, efforts flow between energy states:
- **On**: Active focus, high energy required
- **Ongoing**: Continuous work, steady energy
- **Simmering**: Back-burner, occasional attention
- **Sleeping**: Future ideas, no current energy
- **Archive**: Completed, reference only

Move effort notes between folders as your focus shifts.

### Obsidian Bases
`.base` files create database views of notes using properties. Located in `views/` subfolders.

### Maps of Content (MOCs)
Curated notes that link related ideas together. Located in `maps/` subfolders.

## File Locations

| Note Type | Location | Template |
|-----------|----------|----------|
| Daily note | `calendar/daily/YYYY-MM-DD.md` | `x/templates/daily.md` |
| Effort | `efforts/{status}/` | `x/templates/effort.md` |
| Idea | `atlas/ideas/` | `x/templates/idea.md` |
| Source | `atlas/sources/` | `x/templates/source.md` |
| Meeting | `calendar/meetings/` | `x/templates/meeting.md` |
| MOC | `*/maps/` | `x/templates/moc.md` |
| Quick capture | `+/notes/` | (none) |

## Properties Schema

Standard YAML frontmatter properties:

### All Notes
```yaml
date: YYYY-MM-DD
tags: []
```

### Daily Notes
```yaml
energy: 1-10
mood: word (calm, focused, stressed, etc.)
focus: "ONE Big Thing for the day"
```

### Efforts
```yaml
energy: on|ongoing|simmering|sleeping
area:
due: YYYY-MM-DD
```

### Ideas
```yaml
status: seed|developing|mature
related: []
```

### Sources
```yaml
type: book|article|video|course
author:
status: unread|reading|completed
```

### Meetings
```yaml
attendees: []
project:
```

## Navigation

- Start at [[home]] for navigation hub
- Use [[efforts/maps/dashboard]] for effort overview
- Use [[atlas/maps/ideas]] and [[atlas/maps/sources]] for knowledge

## Workflows

### Daily Note
1. Create `calendar/daily/YYYY-MM-DD.md` using template
2. Set focus, plan time blocks, capture tasks
3. Reflect at end of day

### Capture → Process
1. Quick capture to `+/notes/`
2. During review, move to appropriate location:
   - Ideas → `atlas/ideas/`
   - Sources → `atlas/sources/`
   - Tasks → effort notes or daily note
   - Meetings → `calendar/meetings/`

### Effort Management
1. New effort starts in `efforts/on/`
2. Move between folders as energy shifts
3. Complete → `efforts/archive/`

## Excluded from Obsidian

The `code/` folder is excluded from Obsidian indexing (via `.obsidian/app.json`). Use it for git submodules and code projects.

---
name: obsidian-vault-ops
description: Read and write Obsidian vault files, manage wiki-links, process markdown with YAML frontmatter. Use when working with vault file operations, creating notes, or managing links.
---

# Obsidian Vault Operations Skill

Core operations for managing an Obsidian vault with the ACE framework.

## File Operations

### Creating Notes

Always include YAML frontmatter:
```yaml
---
date: YYYY-MM-DD
tags: []
# Additional properties based on note type
---
```

### Note Types and Locations

| Type | Location | Required Properties |
|------|----------|---------------------|
| Daily | `calendar/daily/` | date, tags |
| Meeting | `calendar/meetings/` | date, tags, attendees, project |
| Idea | `atlas/ideas/` | date, tags, status, related |
| Source | `atlas/sources/` | date, tags, type, author, status |
| Effort | `efforts/{state}/` | date, tags, energy, area, due |
| MOC | `*/maps/` | date, tags |

### File Naming

- Daily notes: `YYYY-MM-DD.md`
- Other notes: `kebab-case-name.md`
- No spaces in filenames

## Wiki-Links

### Link Syntax
```markdown
[[note-name]]                    # Basic link
[[note-name|Display Text]]       # Aliased link
[[note-name#Heading]]            # Link to section
[[folder/note-name]]             # Link with path
```

### Link Best Practices
- Use relative paths from vault root
- Always link to actual files
- Use aliases for cleaner reading
- Link efforts from daily notes

## Templates

Located in `x/templates/`:
- `daily.md` - Daily note template
- `effort.md` - Effort template
- `idea.md` - Idea template
- `source.md` - Source template
- `meeting.md` - Meeting template
- `moc.md` - Map of Content template

### Template Variables
- `{{date}}` - Current date
- `{{date:format}}` - Formatted date
- `{{title}}` - Note title

## Frontmatter Processing

### Reading Frontmatter
```javascript
// Parse YAML between --- markers
const frontmatter = parseYAML(content.split('---')[1]);
```

### Updating Frontmatter
Preserve existing properties, update only specified ones.

## Obsidian Bases

`.base` files in `views/` folders use JSON format:
```json
{
  "name": "View Name",
  "query": {
    "folder": "path/to/folder"
  },
  "view": {
    "type": "table",
    "columns": [...]
  },
  "sort": [...]
}
```

## Common Operations

### Create Daily Note
1. Check if exists: `calendar/daily/YYYY-MM-DD.md`
2. Read template: `x/templates/daily.md`
3. Replace variables
4. Write to daily folder

### Move Effort Between States
1. Read effort file
2. Update `energy` property in frontmatter
3. Move file to new state folder
4. Update any links in dashboard

### Process Inbox Item
1. Read item from `+/notes/`
2. Determine destination based on content
3. Add appropriate frontmatter
4. Move to destination
5. Delete from inbox

## Safety

- Always backup before bulk operations
- Preserve existing frontmatter
- Validate links before creating
- Don't modify `.obsidian/` config files

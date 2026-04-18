---
name: ultraplan
description: Multi-agent workflow orchestration - architect → critic → implementer
license: MIT
compatibility: opencode
metadata:
  audience: developers
  workflow: full-lifecycle
---

## Ultraplan Workflow

This skill orchestrates the full multi-agent workflow:

### Phase 1: Planning

1. **Invoke Architect** - Use `@architect` to create a plan
2. **Architect Analysis** - Architect analyzes requirements
3. **Invoke Critic** - Architect automatically hands to `@critic`
4. **Critic Review** - Critic provides feedback
5. **Revision** - Architect revises based on feedback
6. **User Approval** - Wait for user to approve

### Phase 2: Implementation

7. **Switch Agent** - User presses Tab to switch to implementer
8. **Execute** - Implementer builds the feature
9. **Explore if needed** - Use `@explorer` for code lookups
10. **Verify** - Test the implementation

## Agent Usage

| Agent | Invoke | Purpose |
|-------|--------|---------|
| `@architect` | Always | Create plans |
| `@critic` | Via architect | Review plans |
| `@implementer` | Tab key | Build features |
| `@explorer` | Any time | Code lookup |

## Tips

- Tab cycles primary agents (architect ↔ implementer)
- Use @mention for subagents
- Architect hands to Critic automatically after plan creation
- Wait for user approval before switching to implementer

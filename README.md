# TurbOC

Multi-agent orchestration framework for OpenCode.

## Agents

### Primary Agents (cycle with Tab)

| Agent | Model (Zen Free) | Purpose |
|-------|-----------------|---------|
| **architect** | Big Pickle | Create architectural plans |
| **implementer** | GPT 5 Nano | Execute code changes |
| **researcher** | MiniMax M2.5 Free | Investigate issues/requirements |

All models are free in OpenCode Zen.

### Subagents (invoke with @)

| Agent | Model | Purpose |
|-------|-------|---------|
| **critic** | Nemotron 3 Super Free | Review plans, provide feedback |
| **explorer** | MiniMax M2.5 Free | Fast code exploration |
| **reviewer** | Nemotron 3 Super Free | Post-implementation review |
| **tester** | Big Pickle | Generate tests |
| **debugger** | MiniMax M2.5 Free | Root cause analysis |

## Skills

| Skill | Purpose |
|-------|---------|
| **ultraplan** | Full workflow orchestration |
| **autopilot** | Full autonomous execution |
| **research** | Web research workflow |
| **code-review** | Comprehensive review checklist |
| **test-patterns** | Testing best practices |

## Workflow

### 1. Planning Phase (Architect + Critic)

1. Start with `@architect` to create a plan
2. Architect automatically invokes `@critic` for review
3. Critic provides feedback
4. Architect revises based on feedback
5. User approves the plan

### 2. Implementation Phase (Implementer + Subagents)

1. Switch to implementer via Tab key
2. Implementer executes the approved plan
3. Use `@explorer` for quick code lookups
4. Use `@tester` to add tests
5. Use `@reviewer` for final review

## Installation

```bash
# Clone or navigate to this directory
cd /path/to/opencode-ultraplan

# Run setup to create symlinks
./setup.sh
```

## Usage

### Switching Agents

- **Tab key** - Cycle between primary agents (architect ↔ implementer ↔ researcher)
- **@agentname** - Mention a subagent directly

### Example Workflow

```
You: I need to add a new feature
@architect: creates plan, invokes @critic
@critic: reviews plan, provides feedback
@architect: revises plan
You: Looks good, approve
<Tab> to switch to implementer
@implementer: implements the feature
@tester: adds tests
@reviewer: final review
```

## Quick Reference

| Task | Agent | Command |
|------|-------|--------|
| Create plan | @architect | `@architect design a login system` |
| Review plan | @critic | Invoked by architect |
| Implement | @implementer | `@implementer build the login` |
| Add tests | @tester | `@tester add tests for login` |
| Code review | @reviewer | `@reviewer review the login code` |
| Find code | @explorer | `@explorer find auth middleware` |
| Debug issue | @debugger | `@debugger login returns 401` |
| Research | @researcher | `@researcher how does OAuth work` |

## Configuration

Edit `opencode.json` to customize:

- Model choices
- Temperature settings
- Permissions per agent

## Files

```
.
├── agents/           # Agent definitions (8)
│   ├── architect.md
│   ├── implementer.md
│   ├── researcher.md
│   ├── critic.md
│   ├── explorer.md
│   ├── reviewer.md
│   ├── tester.md
│   └── debugger.md
├── skills/           # Skill definitions (5)
│   ├── ultraplan/
│   ├── autopilot/
│   ├── research/
│   ├── code-review/
│   └── test-patterns/
├── opencode.json     # Main configuration
├── setup.sh        # Symlink setup script
├── README.md      # This file
└── AGENTS.md     # Project context
```

## License

MIT
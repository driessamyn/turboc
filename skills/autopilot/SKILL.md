---
name: autopilot
description: Full autonomous execution from idea to working code
license: MIT
compatibility: opencode
metadata:
  audience: developers
  workflow: full-lifecycle
---

## Autopilot Workflow

This skill enables full autonomous execution:

### Phase 1: Understanding
- Analyze the user's request
- Ask clarifying questions if needed
- Research the codebase if needed

### Phase 2: Planning
- Use @architect to create a plan
- Use @critic to review the plan
- Revise until approved

### Phase 3: Implementation
- Use @implementer to execute
- Use @tester to add tests
- Use @reviewer for final review

### Phase 4: Verification
- Run tests
- Verify the feature works
- Report completion

## Usage

Simply describe what you want to build:
```
autopilot: build a REST API for managing tasks
```

Or just describe your goal naturally and the skill will guide the workflow.

## Agents Used

| Phase | Agent |
|-------|-------|
| Research | @researcher |
| Planning | @architect, @critic |
| Implementation | @implementer |
| Testing | @tester |
| Review | @reviewer |
| Debugging | @debugger |
| Exploration | @explorer |
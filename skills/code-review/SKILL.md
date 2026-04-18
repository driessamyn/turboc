---
name: code-review
description: Comprehensive code review checklist and best practices
license: MIT
compatibility: opencode
metadata:
  audience: developers
  workflow: review
---

## Code Review Framework

### Code Quality

- [ ] **Readability**: Is the code easy to understand?
- [ ] **Naming**: Are variables/functions clearly named?
- [ ] **Complexity**: Is the code too complex? Can it be simplified?
- [ ] **Duplication**: Is there duplicate code that should be extracted?

### Functionality

- [ ] **Correctness**: Does the code do what it's supposed to?
- [ ] **Edge cases**: Are edge cases handled?
- [ ] **Error handling**: Are errors handled properly?
- [ ] **Testing**: Is there adequate test coverage?

### Security

- [ ] **Input validation**: Are inputs validated?
- [ ] **Secrets**: Are secrets handled securely?
- [ ] **SQL injection**: Is SQL properly parameterized?
- [ ] **XSS**: Is output properly escaped?

### Performance

- [ ] **N+1 queries**: Are there unnecessary database queries?
- [ ] **Memory**: Are there memory leaks?
- [ ] **Indexing**: Are database indexes used effectively?

### Best Practices

- [ ] **DRY**: Don't repeat yourself
- [ ] **SOLID**: Follow object-oriented principles
- [ ] **Comments**: Are complex parts commented?
- [ ] **Documentation**: Is the API documented?

## Review Output

For each issue found, provide:

1. **Severity**: Critical / Major / Minor
2. **Location**: File and line number
3. **Issue**: What the problem is
4. **Suggestion**: How to fix it
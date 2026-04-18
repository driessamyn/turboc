---
name: test-patterns
description: Test patterns and best practices for various scenarios
license: MIT
compatibility: opencode
metadata:
  audience: developers
  workflow: testing
---

## Test Patterns Guide

### Unit Tests

```javascript
// Basic unit test structure
describe('functionName', () => {
  it('should do X when Y', () => {
    expect(functionName(input)).toBe(expected);
  });

  it('should handle edge case', () => {
    expect(functionName(edgeCase)).toBe(expected);
  });
});
```

### Integration Tests

```javascript
// API endpoint test
describe('POST /api/endpoint', () => {
  it('should return 201 on success', async () => {
    const res = await request(app)
      .post('/api/endpoint')
      .send(validPayload);

    expect(res.status).toBe(201);
    expect(res.body).toHaveProperty('data');
  });
});
```

### Mocking Patterns

**Mock external dependencies:**
```javascript
jest.mock('./externalModule', () => ({
  fetchData: jest.fn()
}));
```

**Mock database:**
```javascript
const mockDb = {
  find: jest.fn(),
  create: jest.fn()
};
```

### Test Coverage Guidelines

- Aim for 80%+ coverage
- Test happy path
- Test edge cases
- Test error conditions
- Test boundaries

### Assertion Libraries

- **Jest**: `expect()`, `.toBe()`, `.toEqual()`
- ** Chai**: `expect()`, `should`
- **Vitest**: Same as Jest API

### Async Testing

```javascript
it('should resolve with data', async () => {
  const result = await asyncFunction();
  expect(result).toBe(expected);
});
```

### Testing Best Practices

1. **AAA Pattern**: Arrange, Act, Assert
2. **One expectation** per test when possible
3. **Descriptive names**: `it('should...')`
4. **Isolated tests**: No dependencies between tests
5. **Fast tests**: Keep unit tests quick
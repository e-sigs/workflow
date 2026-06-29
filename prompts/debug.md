# Agent Prompt: Debug a Problem

```text
We need to debug: <problem>

Known facts:
- Observed behavior: <observed>
- Expected behavior: <expected>
- Repro steps: <steps>
- Logs/errors: <logs>

Workflow:
1. Build a hypothesis list.
2. Inspect relevant code and tests.
3. Create or identify a minimal reproduction.
4. Confirm root cause before fixing.
5. Add a regression test.
6. Validate the fix against the original repro.
```

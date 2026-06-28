# Agent Prompt: Implement a Change

Use this prompt with a coding agent.

```text
You are implementing: <task>

Context:
- Goal: <goal>
- Non-goals: <non-goals>
- Constraints: <constraints>
- Relevant files/docs: <files>

Workflow:
1. Inspect the codebase before editing.
2. Summarize findings and propose a short plan.
3. Implement the smallest coherent change.
4. Add/update tests and docs as needed.
5. Run validation and report evidence.

Final response must include summary, files changed, validation, and risks/follow-ups.
```

# Parallel Agents Workflow

Use this when multiple agents work on the same repository at once.

## Ground rules

- Use separate git worktrees for each agent.
- Assign non-overlapping tasks when possible.
- Name branches/worktrees by task.
- Keep a coordination log or status board.
- Merge one change at a time through normal review.

## Recommended task split

- Agent A: implementation
- Agent B: tests or regression reproduction
- Agent C: documentation/migration notes
- Agent D: review/audit/scout task

## Collision handling

If agents touch the same files:

1. Pause new work on the affected area.
2. Choose the authoritative implementation.
3. Rebase or replay smaller changes manually.
4. Rerun validation after integration.

## Integration checklist

- [ ] Each agent reports summary and evidence.
- [ ] Diffs are reviewed independently.
- [ ] Combined branch passes validation.
- [ ] Follow-up tasks are captured.

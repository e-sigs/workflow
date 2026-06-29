# Agent Orchestration Workflow

Use this when one human is coordinating one or more coding agents.

## Roles

- **Captain:** human owner of goals, priorities, tradeoffs, and final acceptance.
- **First mate:** orchestrator that breaks work into tasks, monitors agents, escalates decisions, and reports status.
- **Crewmates:** task agents working in isolated contexts.

## Task shapes

### Scout task

Use for discovery:

- Investigate a code area
- Reproduce a bug
- Compare options
- Audit risk
- Produce a plan

Scout tasks should not land product changes unless explicitly approved.

### Ship task

Use for delivery:

- Implement a scoped change
- Add tests/docs
- Run validation
- Prepare PR handoff

## Task briefing

Use [`templates/agent-task.md`](../templates/agent-task.md) to scope each task before handing it to an agent.

## Orchestration rules

- One task per isolated worktree when possible.
- Give each agent clear goals, non-goals, constraints, and validation expectations.
- Require evidence, not confidence.
- Escalate product, security, migration, and irreversible decisions to the captain.
- Merge only after review and validation.

## Status report format

```text
Task: <name>
Mode: scout | ship
State: queued | running | blocked | validating | done | failed
Summary: <one paragraph>
Evidence: <tests/logs/files/links>
Needs captain: <decision or none>
Next step: <action>
```

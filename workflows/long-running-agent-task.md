# Long-Running Agent Task Workflow

Use this for autonomous or semi-autonomous agent loops that may run across many iterations.

## Before starting

- Define the outcome and stop condition.
- Set runtime, token, and iteration limits.
- Decide whether the agent can commit, push, or open PRs.
- Choose an isolated worktree/branch.
- Document validation commands.

## During the run

Each successful iteration should:

- Make one coherent change.
- Run relevant validation.
- Commit with a clear message, if commit access is allowed.
- Append notes for the next iteration.

Failed iterations should:

- Preserve useful diagnostics.
- Roll back unsafe partial changes.
- Escalate repeated failures or ambiguous decisions.

## Stop conditions

Stop when:

- The goal is complete.
- Validation passes.
- The task hits a configured cap.
- The agent needs a human decision.
- The same failure repeats without new information.

## Final handoff

Include:

- Branch/worktree path
- Commit list or diff summary
- Validation evidence
- Open risks
- Recommended review commands

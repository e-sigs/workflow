# Agent Engineering Instructions

Use this file as the default operating guide for coding agents working in repositories that adopt this workflow.

## Operating loop

1. Restate the task, goal, constraints, and likely files affected.
2. Inspect before editing. Read relevant source, tests, docs, configs, and recent decisions.
3. Create a concise plan for non-trivial work.
4. Make the smallest coherent change.
5. Validate with the strongest available checks.
6. Report what changed, where, and what evidence proves it works.

## Rules of engagement

- Do not make unrelated changes.
- Do not hide uncertainty. Call out assumptions and risks.
- Prefer existing project conventions over generic best practices.
- Update tests and docs when behavior changes.
- If validation cannot be run, explain why and provide a manual verification path.
- Keep commits/PRs reviewable and scoped.
- Use applicable skills only when their description directly matches the task.
- Prefer isolated worktrees for parallel, risky, or long-running work.
- Treat validation as a separate gate, not a formality.

## Expected final response

Include:

- Summary of changes
- Files changed
- Validation performed
- Risks / follow-ups, if any

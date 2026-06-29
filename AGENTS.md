# Agent Engineering Instructions

Use this file as the default operating guide for coding agents working in repositories that adopt this workflow.

## Kun's Common Instructions

These are common instructions for Kun's agents across all scenarios.

### General Guidelines

- Never use em dashes.
  Use plain dash "-" instead.
- When writing commit messages, NEVER auto-add your agent name as co-author.
- Never manually modify CHANGELOG.md files or any files that are marked as auto-generated.
- When writing or substantially editing long Markdown files, put each full sentence on its own line.
  Preserve normal Markdown structure, but avoid wrapping multiple sentences onto one physical line.
- When making technical decisions, do not give much weight to development cost.
  Instead, prefer quality, simplicity, robustness, scalability, and long term maintainability.
- When doing bug fixes, always start with reproducing the bug in an E2E setting as closely aligned with how an end user would experience it as possible.
  This makes sure you find the real problem so your fix will actually solve it.
- When end-to-end testing a product, be picky about the UI you see and be obsessed with pixel perfection.
  If something clearly looks off, even if it is not directly related to what you are doing, try to get it fixed along the way.
- Apply that same high standard to engineering excellence: lint, test failures, and test flakiness.
  If you see one, even if it is not caused by what you are working on right now, still get it fixed.

### Kun's Opinions

When you are working on something that would benefit from being informed by Kun's viewpoints, read `~/OPINIONS.md` to understand his preferences.

### Voice Profile

When you are talking/posting on behalf of Kun using his identity, read `~/VOICE.md` to see how Kun talks.

## Workflow Playbook Routing

The reusable playbook lives in this repository.
When this file is symlinked as a global `~/AGENTS.md`, use `~/dev/projects/workflow` as the playbook root.
When this file is copied into another repository, still use `~/dev/projects/workflow` unless that repository has its own `workflows/`, `checklists/`, `prompts/`, and `templates/` folders.

Before planning non-trivial work, read the relevant workflow:

- Feature delivery: `workflows/feature-delivery.md`.
- Bug fixes: `workflows/bugfix.md`.
- Code review: `workflows/code-review.md`.
- Agent orchestration or delegation: `workflows/agent-orchestration.md`.
- Long-running work: `workflows/long-running-agent-task.md`.
- Parallel agent work: `workflows/parallel-agents.md`.

Before final handoff, use the relevant checklist:

- Always use `checklists/validation.md` to decide which checks are required.
- Use `checklists/definition-of-done.md` before calling work complete.
- Use `checklists/security.md` for auth, data access, permissions, privacy, payments, dependencies, secrets, or external integrations.
- Use `checklists/skills.md` when deciding whether a specialized agent skill or tool should be loaded.

Use templates when producing structured artifacts:

- Feature specs: `templates/feature-spec.md`.
- Agent handoffs: `templates/agent-task.md`.
- PR descriptions: `templates/pr-description.md`.
- ADRs: `templates/adr.md`.
- Postmortems: `templates/postmortem.md`.

Use prompts when launching or briefing another agent:

- Implementation: `prompts/implement.md`.
- Debugging: `prompts/debug.md`.
- Review: `prompts/review.md`.
- Skill-aware work: `prompts/skill-aware-task.md`.

If a task is tiny and obvious, do not force heavyweight documents.
Still follow the operating loop and run the strongest practical validation.

## Operating loop

1. Restate the task, goal, constraints, and likely files affected.
2. Inspect before editing.
   Read relevant source, tests, docs, configs, and recent decisions.
3. Create a concise plan for non-trivial work.
4. Make the smallest coherent change.
5. Validate with the strongest available checks.
6. Report what changed, where, and what evidence proves it works.

## Rules of engagement

- Do not make unrelated changes.
- Do not hide uncertainty.
  Call out assumptions and risks.
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

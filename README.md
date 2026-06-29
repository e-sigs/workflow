# Engineering Workflow

An opinionated agentic engineering workflow repo inspired by Kun Chen's “L8 Principal's Agentic Engineering Workflow”.

This repository is meant to be copied into projects or referenced by agents and engineers as the shared operating model for taking work from idea → plan → implementation → validation → review → release.

## Core loop

1. **Intake** — capture goals, constraints, context, risks, and definition of done.
2. **Explore** — inspect the codebase, docs, prior decisions, tests, and production signals.
3. **Plan** — produce a small, reviewable plan with assumptions and validation strategy.
4. **Implement** — make focused changes, keep diffs small, update docs and tests with the code.
5. **Validate** — run automated checks, manual verification, and regression review.
6. **Review** — summarize what changed, evidence, tradeoffs, and follow-ups.
7. **Ship / Learn** — release safely, monitor, and capture lessons as reusable workflow updates.

## Repository map

```text
workflows/    Step-by-step operating procedures
checklists/   Definition-of-done and quality gates
templates/    Reusable docs, specs, PRs, ADRs, postmortems
prompts/      Agent prompts for common engineering tasks
scripts/      Local workflow helpers
dotfiles/     Portable workstation configuration managed by this workflow
docs/         Decisions, operations notes, and references
.github/      Issue and PR templates
```

## Start here

- New feature: [`workflows/feature-delivery.md`](workflows/feature-delivery.md)
- Bug fix: [`workflows/bugfix.md`](workflows/bugfix.md)
- Code review: [`workflows/code-review.md`](workflows/code-review.md)
- Agent orchestration: [`workflows/agent-orchestration.md`](workflows/agent-orchestration.md)
- Long-running agent work: [`workflows/long-running-agent-task.md`](workflows/long-running-agent-task.md)
- Parallel agents: [`workflows/parallel-agents.md`](workflows/parallel-agents.md)
- Validation gate: [`checklists/validation.md`](checklists/validation.md)
- Agent instructions: [`AGENTS.md`](AGENTS.md)
- Workstation setup: [`docs/ops/agentic-workstation.md`](docs/ops/agentic-workstation.md)
- Agent-facing tool standard: [`docs/ops/agent-facing-tools.md`](docs/ops/agent-facing-tools.md)
- Video link analysis: [`docs/references/l8-principal-video-links.md`](docs/references/l8-principal-video-links.md)

## Principles

- Prefer clear written intent before implementation.
- Optimize for small, reversible, well-tested changes.
- Treat agents as junior teammates with fast execution: give them context, constraints, and verification loops.
- Use isolated worktrees for parallel or long-running agent work.
- Design tools and scripts for agent ergonomics: predictable output, explicit errors, and clear next steps.
- Never trust a change without evidence: tests, lint, type checks, screenshots, logs, or manual reproduction notes.
- Capture decisions and learnings so the workflow improves over time.

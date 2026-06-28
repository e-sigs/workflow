# Agentic Workstation

A strong agentic engineering setup optimizes for visibility, persistence, and low-friction handoff between humans and agents.

## Recommended shape

- **Terminal:** WezTerm or another programmable terminal.
- **Session manager:** tmux for durable sessions and observable agent panes.
- **Editor:** Neovim, VS Code, or the team's standard editor.
- **Voice input:** optional dictation for high-throughput prompting.
- **Worktree isolation:** one task/agent per isolated git worktree.

## Why this matters

- Agents can run for a long time without blocking the main workspace.
- Humans can inspect or intervene in agent sessions.
- Parallel tasks do not collide in the same working tree.
- Context survives terminal restarts.

## Local setup checklist

- [ ] Terminal profile for agent work.
- [ ] tmux session naming convention.
- [ ] Project-level `AGENTS.md` or equivalent memory file.
- [ ] Global personal agent preferences kept outside project repos.
- [ ] Worktree directory convention.
- [ ] Validation commands documented per project.

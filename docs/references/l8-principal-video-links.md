# L8 Principal Agentic Engineering Workflow — Link Notes

Source video: https://www.youtube.com/watch?v=iQyg-KypKAA

## Links from the video description

- Kun Chen links: https://linktr.ee/kunchenguid
- WezTerm: https://wezterm.org/index.html
- tmux: https://github.com/tmux/tmux/wiki
- Neovim: https://neovim.io/
- npx skills CLI: https://github.com/vercel-labs/skills
- OpenSuperWhisper: https://github.com/Starmel/OpenSuperWhisper
- AXI: https://axi.md/
- lavish: https://github.com/kunchenguid/lavish-axi
- no-mistakes: https://github.com/kunchenguid/no-mistakes
- gnhf: https://github.com/kunchenguid/gnhf
- treehouse: https://github.com/kunchenguid/treehouse
- firstmate: https://github.com/kunchenguid/firstmate

## Takeaways incorporated into this repo

### Terminal-first workstation

The workflow assumes a terminal-centered environment where agents and humans can share durable state:

- **WezTerm** as a programmable terminal
- **tmux** for persistent sessions, panes, windows, and observable agent work
- **Neovim** as the editor layer

This repo does not require those tools, but it documents them as the default workstation pattern in [`docs/ops/agentic-workstation.md`](../ops/agentic-workstation.md).

### Skills as bounded capabilities

The `skills` CLI and AXI pattern suggest that agents perform better when tool-specific behavior is packaged as explicit, discoverable skills rather than buried in vague prompts.

This repo adds:

- A skill governance checklist: [`checklists/skills.md`](../../checklists/skills.md)
- A prompt for skill-aware work: [`prompts/skill-aware-task.md`](../../prompts/skill-aware-task.md)

### Agent ergonomics

AXI emphasizes agent-facing CLIs with predictable output, machine-readable summaries, low ambiguity, and clear next steps. This repo captures that as an engineering standard in [`docs/ops/agent-facing-tools.md`](../ops/agent-facing-tools.md).

### Interactive planning artifacts

`lavish-axi` shows a pattern for turning complex plans into local, reviewable HTML artifacts that humans can annotate. This repo now recommends rich artifacts for plans, comparisons, diagrams, and reviews that are too dense for plain chat.

### Validation gates

`no-mistakes` formalizes validation as a gate: isolated worktree, automated review/tests, safe autofixes, PR/CI monitoring, and human escalation. This repo's validation workflow now explicitly separates implementation from gatekeeping.

### Long-running autonomous loops

`gnhf` demonstrates long-running agent loops with incremental commits, rollback on failure, resumable runs, token/runtime caps, and durable notes. This repo adds a long-running task workflow.

### Parallel agents and worktree isolation

`treehouse` and `firstmate` reinforce the importance of isolated worktrees for parallel agents. This repo adds a parallel agents workflow that treats each agent's work as isolated until reviewed and merged.

### Orchestration mindset

`firstmate` frames the human as captain and the orchestrator as first mate: humans decide goals and tradeoffs; agents execute scoped tasks, scout unknowns, and report evidence. This repo now reflects that in [`workflows/agent-orchestration.md`](../../workflows/agent-orchestration.md).

# Agent-Facing Tool Standard

When building CLIs or scripts that agents will use, optimize for agent ergonomics.

## Requirements

- Predictable command names and flags.
- Clear success/failure exit codes.
- Concise stdout with optional verbose mode.
- Machine-readable output option, preferably JSON.
- Stable identifiers for follow-up actions.
- Helpful error messages with next steps.
- Idempotent operations where possible.
- Safe dry-run mode for destructive actions.

## Output pattern

Every command should make it easy for an agent to answer:

1. What happened?
2. Did it succeed?
3. What changed?
4. What should be done next?

## Avoid

- Interactive prompts without non-interactive flags.
- Huge unstructured logs as the only output.
- Ambiguous partial success.
- Hidden global state.
- Commands that require humans to infer next steps from raw traces.

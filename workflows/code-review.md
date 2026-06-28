# Code Review Workflow

## Reviewer checklist

- Does the change solve the stated problem?
- Is the scope tight and understandable?
- Are tests meaningful and placed at the right level?
- Are edge cases and failure modes handled?
- Are security, privacy, performance, and migration risks considered?
- Are docs and user-facing behavior updated?
- Can the change be rolled back safely?

## Review style

- Separate blocking issues from suggestions.
- Explain why, not just what.
- Prefer examples or patches for clarity.
- Acknowledge good decisions.

## Agent-assisted review prompt

Use [`prompts/review.md`](../prompts/review.md) to ask an agent for a structured first-pass review, then apply human judgment.

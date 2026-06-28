# Agent Skill Governance Checklist

Use before adding or relying on an agent skill.

- [ ] The skill has a narrow, clear purpose.
- [ ] The description makes activation conditions obvious.
- [ ] The skill does not encourage unrelated behavior.
- [ ] The skill documents required tools and permissions.
- [ ] The skill has safe failure behavior.
- [ ] The skill does not leak secrets or private data.
- [ ] The skill output is easy to validate.
- [ ] The skill is versioned or pinned when used in critical workflows.
- [ ] The skill can be removed without breaking the project.

## Warning signs

- Broad “always use this” instructions.
- Hidden network or filesystem side effects.
- Ambiguous tool usage.
- Long prompt payloads that crowd out task context.
- Instructions that conflict with project-level policy.

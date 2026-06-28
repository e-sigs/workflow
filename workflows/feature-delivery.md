# Feature Delivery Workflow

## 1. Intake

Use [`templates/feature-spec.md`](../templates/feature-spec.md).

Clarify:

- User/customer problem
- Success metrics
- Non-goals
- Constraints and dependencies
- Rollout and rollback expectations

## 2. Explore

- Read relevant code and tests.
- Identify existing patterns.
- Check prior ADRs and open issues.
- Map risky surfaces: data, auth, payments, migrations, external APIs.

## 3. Plan

Produce a short implementation plan:

- Files/components likely to change
- Test strategy
- Edge cases
- Rollout plan
- Open questions

## 4. Implement

- Keep changes small and cohesive.
- Add or update tests alongside behavior.
- Update docs, configs, examples, or migration notes as needed.

## 5. Validate

Run the validation checklist in [`checklists/validation.md`](../checklists/validation.md).

## 6. Review handoff

Use [`templates/pr-description.md`](../templates/pr-description.md).

## Related

- Implementation prompt: [`prompts/implement.md`](../prompts/implement.md)
- Definition of done: [`checklists/definition-of-done.md`](../checklists/definition-of-done.md)

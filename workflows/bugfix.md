# Bugfix Workflow

## 1. Reproduce

Capture:

- Observed behavior
- Expected behavior
- Environment
- Inputs, account, flags, browser, device, or data shape
- Logs, traces, screenshots, or failing tests

## 2. Minimize

Create the smallest reproduction possible:

- Unit test
- Integration test
- Script
- Manual steps

## 3. Diagnose

- Identify the regression window if possible.
- Trace data/control flow.
- Check assumptions at boundaries.
- Look for similar code paths.

## 4. Fix

- Prefer root-cause fixes over masking symptoms.
- Add a regression test that fails before the fix.
- Keep unrelated refactors out unless required for safety.

## 5. Validate

- Run the regression test.
- Run adjacent test suites.
- Manually verify the original reproduction.

## 6. Handoff

Document root cause, fix, validation, and remaining risk.

## Related

- Debug prompt: [`prompts/debug.md`](../prompts/debug.md)
- Validation checklist: [`checklists/validation.md`](../checklists/validation.md)

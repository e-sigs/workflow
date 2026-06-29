# Validation Checklist

Use the strongest checks available for the change.

## Automated

- [ ] Formatting
- [ ] Linting
- [ ] Type checking
- [ ] Unit tests
- [ ] Integration tests
- [ ] End-to-end tests
- [ ] Build/package verification
- [ ] Security/dependency scan, if relevant

## Manual

- [ ] Reproduced the original bug or user flow
- [ ] Verified happy path
- [ ] Verified key edge cases
- [ ] Checked error and empty states
- [ ] Checked logs/telemetry where relevant
- [ ] Captured screenshots/video for UI changes

## Agentic gatekeeping

- [ ] Validation ran outside the implementation agent/session when practical
- [ ] Review findings were triaged as blocking vs non-blocking
- [ ] Safe autofixes were rerun through validation
- [ ] Human decisions were escalated explicitly

## Release readiness

- [ ] Migration/backfill plan documented
- [ ] Rollback path documented
- [ ] Feature flag or staged rollout considered
- [ ] Monitoring/alerts updated
- [ ] Docs/support notes updated

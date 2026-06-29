# Security Review Checklist

- [ ] Authentication and authorization are enforced server-side.
- [ ] Inputs are validated at trust boundaries.
- [ ] Secrets are not logged, committed, exposed to clients, or stored insecurely.
- [ ] PII handling is minimized and documented.
- [ ] External requests are constrained and timeout safely.
- [ ] File uploads/downloads validate type, size, path, and permissions.
- [ ] SQL/command/template injection risks are mitigated.
- [ ] Dependencies and generated code are trusted or reviewed.

# Release PR Template

New releases should make a PR tagged "release" with the following template filled out.

The PR should include additions to [`CHANGELOG.md`](../CHANGELOG.md).

```markdown
## Checklist
- [ ] Are all environment variables up-to-date,
  - [ ] In [`docker-compose.yml`](./docker-compose.yml)?
  - [ ] In [`.env.defaults`](./.env.defaults)?
```

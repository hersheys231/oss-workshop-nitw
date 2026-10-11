# Contributing

Thanks for contributing! Please follow these steps:

1. **Pick an issue** from the Issues tab and comment on it so others know it's taken.
2. **Fork** this repo and **clone your fork**:
   ```bash
   git clone https://github.com/<your-username>/oss-workshop-nitw.git
   cd oss-workshop-nitw
   git remote add upstream https://github.com/<owner-username>/oss-workshop-nitw.git
   ```
3. **Create a branch** — never work on `main`:
   `fix/<issue-number>-<short-name>` (e.g. `fix/1-readme-typos`)
4. Make **one focused change** per pull request.
5. Check your work with `git status` and `git diff` before committing.
6. **Commit message format:** `type: short description`
   - `docs: fix typos in README`
   - types: `docs`, `fix`, `feat`, `refactor`
7. **Push** your branch and open a PR against `main`.
8. In the PR description write `Closes #<issue-number>` (for Issue #3 use `Refs #3`).
9. Respond to review comments by pushing to the **same branch**.

## Keeping your fork in sync

```bash
git checkout main
git pull upstream main
git push origin main
```

Or click **Sync fork** on your fork's GitHub page.

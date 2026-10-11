#!/usr/bin/env bash
# One-time setup for the repo OWNER. Needs GitHub CLI: https://cli.github.com  (run `gh auth login` first)
# Usage: bash scripts/setup-github.sh
set -e
REPO_NAME=oss-workshop-nitw

# 1. Create the repo on your account and push (skip if it already exists)
if ! gh repo view "$REPO_NAME" >/dev/null 2>&1; then
  gh repo create "$REPO_NAME" --public --source=. --remote=origin --push \
    --description "Practice repo for the NIT Warangal open source workshop"
fi

# 2. Labels
gh label create "good first issue" --color 7057ff --description "Good for newcomers" --force
gh label create "documentation"    --color 0075ca --description "Docs changes"       --force
gh label create "first-timers-only" --color 22c55e --description "Only for people who've never contributed" --force

# 3. Issues, created from the issues/ folder (title = first line, body = the rest)
make_issue () {
  local file=$1 labels=$2
  local title body
  title=$(head -n1 "$file" | sed 's/^# //')
  body=$(tail -n +2 "$file")
  gh issue create --title "$title" --body "$body" --label "$labels"
}
make_issue issues/01-fix-readme-typos.md            "good first issue,documentation"
make_issue issues/02-add-workshop-details.md        "good first issue,documentation"
make_issue issues/03-add-yourself-as-contributor.md "good first issue,first-timers-only"

echo "Done: $(gh repo view --json url -q .url)"

# Documentation Contribution Guide

## 🌟 Quick Start for Small Teams

### Branch Naming Convention

Use clear, descriptive branch names following this pattern:
```
<type>/<short-description>
```

**Examples:**
```bash
# Good branch names
docs/user-auth-guide
docs/api-reference
docs/setup-instructions
feature/dashboard-docs
fix/broken-links
update/team-structure

# Avoid
docs-update
fix-stuff
john-branch
temp
```

### Branch Types

| Type | Purpose | Examples |
|------|---------|----------|
| `docs/` | New documentation | `docs/api-guide`, `docs/onboarding` |
| `update/` | Update existing docs | `update/roadmap`, `update/team-info` |
| `fix/` | Fix errors/issues | `fix/broken-links`, `fix/typos` |
| `feature/` | Document new features | `feature/auth-flow` |
| `restructure/` | Reorganize content | `restructure/navigation` |

## 🚀 Workflow Options for Small Teams

### Option 1: Direct to Main (Ultra-Fast) ⚡
**Best for:** 2-4 person teams, high trust, quick fixes

```bash
# For small, trusted teams - bypass PR for minor updates
git checkout main
git pull origin main
git add docs/
git commit -m "docs: update user guide with new screenshots"
git push origin main
```

**Pros:** ✅ Fastest, ✅ No overhead, ✅ Immediate deployment
**Cons:** ❌ No review, ❌ Risk of errors

### Option 2: Fast-Track PR (Recommended) 🎯
**Best for:** 3-8 person teams, balance of speed and quality

```bash
# Create feature branch
git checkout -b docs/api-reference
git add docs/
git commit -m "docs: add comprehensive API reference"
git push origin docs/api-reference

# Create PR with auto-merge enabled
gh pr create --title "Add API Reference Documentation" --body "Complete API docs with examples"
gh pr merge --auto --squash  # Auto-merge when checks pass
```

**Pros:** ✅ Quality gate, ✅ Still fast, ✅ Documentation trail
**Cons:** ❌ Slight overhead

### Option 3: Full Review Process 🛡️
**Best for:** Larger teams, critical documentation, compliance needs

```bash
# Standard GitHub flow with required reviews
git checkout -b docs/security-guide
# ... make changes ...
git push origin docs/security-guide
# Create PR, wait for reviews, then merge
```

## 📋 Pre-Commit Quality Gate

**Every commit automatically checks:**
- ✅ Markdown formatting
- ✅ Internal link validation
- ✅ Documentation builds successfully
- ✅ No trailing whitespace/file issues

**If pre-commit fails, commit is blocked until fixed!**

## 🎯 Recommended Approach by Team Size

### 2-3 Person Team: **Direct + Selective PR**
```bash
# Minor updates: Direct to main
git checkout main && git add . && git commit -m "docs: fix typo" && git push

# Major changes: Fast-track PR
git checkout -b docs/major-update && git push origin docs/major-update
gh pr create --title "Major Documentation Restructure"
```

### 4-6 Person Team: **Fast-Track PR Default**
```bash
# Always use branches, but enable auto-merge
git checkout -b docs/update-$(date +%Y%m%d)
# ... changes ...
gh pr create --title "Daily docs update" --body "$(git log --oneline -5)"
gh pr merge --auto --squash
```

### 7+ Person Team: **Full Review Process**
- Required reviews
- Branch protection rules
- Staging deployments

## 🔧 GitHub Repository Settings

### For Direct-to-Main Teams
```yaml
# .github/branch-protection.yml (optional)
main:
  required_status_checks:
    strict: false
    contexts: []
  enforce_admins: false
  required_pull_request_reviews: null
```

### For PR-Required Teams
```yaml
main:
  required_status_checks:
    strict: true
    contexts:
      - "build-and-deploy"
  required_pull_request_reviews:
    required_approving_review_count: 1
    dismiss_stale_reviews: false
```

## 📝 Commit Message Format

Use conventional commits for better tracking:

```bash
# Format: <type>: <description>
docs: add user authentication guide
docs: update API reference with new endpoints
fix: correct broken links in overview section
update: refresh team contact information
feature: add dashboard documentation
```

**Types:**
- `docs:` - New documentation
- `update:` - Update existing docs
- `fix:` - Fix errors or issues
- `feature:` - Document new features
- `refactor:` - Restructure content

## ⚡ Speed Tips

### 1. Use GitHub CLI for Fast PRs
```bash
# Install: brew install gh
gh pr create --title "Quick docs update" --body "Minor fixes" --assignee @me
gh pr merge --auto --squash
```

### 2. Pre-commit for Instant Validation
```bash
# Set up once
poetry run pre-commit install

# Now every commit is automatically validated!
git commit -m "docs: update"  # Pre-commit runs automatically
```

### 3. Live Preview While Writing
```bash
# Start local server
poetry run mkdocs serve

# Opens http://localhost:8000 with live reload
# See changes instantly as you write!
```

### 4. Link Checking
```bash
# Quick link validation
./check-links.sh

# Or run comprehensive pre-commit check
poetry run pre-commit run --all-files
```

## 🎉 Recommended Workflow for Most Teams

**The "Fast & Safe" approach:**

```bash
# 1. Create descriptive branch
git checkout -b docs/user-onboarding-guide

# 2. Make changes with live preview
poetry run mkdocs serve  # In separate terminal

# 3. Commit (pre-commit runs automatically)
git add docs/
git commit -m "docs: add comprehensive user onboarding guide"

# 4. Push and create auto-merge PR
git push origin docs/user-onboarding-guide
gh pr create --title "Add User Onboarding Guide" --body "Complete guide for new users"
gh pr merge --auto --squash

# 5. Clean up
git checkout main && git pull && git branch -d docs/user-onboarding-guide
```

**Result:**
- ✅ High quality (pre-commit validation)
- ✅ Fast deployment (auto-merge)
- ✅ Good documentation trail (PR history)
- ✅ Minimal overhead (~2 minutes total)

This gives you the **best balance of speed, quality, and collaboration** for documentation! 🚀

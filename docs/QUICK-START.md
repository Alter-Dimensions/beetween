# 📚 Documentation Quick Reference

## 🚀 For Small Teams (2-4 people) - Recommended Approach

### Direct Push (Fastest)
```bash
# For minor fixes and updates
git add docs/ && git commit -m "docs: fix typo in user guide" && git push
```

### Branch + Auto-merge PR (Best Balance)
```bash
# For new content or major changes
git checkout -b docs/new-feature-guide
git add docs/ && git commit -m "docs: add feature XYZ guide"
git push origin docs/new-feature-guide
gh pr create --title "Add Feature XYZ Guide" && gh pr merge --auto --squash
```

## 📋 Branch Naming

| Pattern | Example | Use Case |
|---------|---------|----------|
| `docs/topic` | `docs/api-guide` | New documentation |
| `update/topic` | `update/roadmap` | Update existing content |
| `fix/issue` | `fix/broken-links` | Fix problems |

## ⚡ Pre-commit Catches Everything

Every commit automatically:
- ✅ Fixes formatting issues
- ✅ Validates all links
- ✅ Tests documentation builds
- ✅ Blocks broken commits

**No CI overhead - all validation happens locally!**

## 🛠️ Quick Commands

```bash
# Setup (one-time)
poetry run pre-commit install

# Preview changes
poetry run mkdocs serve

# Manual validation
poetry run pre-commit run --all-files

# Check links only
./check-links.sh
```

## 💡 Pro Tips

1. **Use GitHub CLI** for super-fast PRs: `gh pr create && gh pr merge --auto`
2. **Enable live preview** while writing: `mkdocs serve`
3. **Pre-commit blocks bad commits** - no worries about breaking main!
4. **Ultra-fast CI** - GitHub Actions just builds and deploys (~2 min)

**Result: High-quality docs with minimal overhead!** 🎉

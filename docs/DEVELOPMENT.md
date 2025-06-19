# Documentation Development Setup

## Pre-commit Hooks (Local Quality Assurance)

All linting and validation happens locally via pre-commit hooks to:

- ✅ **Catch issues early** - Before they reach GitHub
- ✅ **Reduce CI costs** - Minimal server usage
- ✅ **Faster feedback** - Instant local validation
- ✅ **Better DX** - Developers fix issues locally

### What Pre-commit Does

1. **Basic cleanup** - Trailing whitespace, end-of-file fixes
2. **Markdown linting** - Auto-fixes formatting issues
3. **Link validation** - Checks all internal documentation links
4. **Build testing** - Ensures MkDocs builds successfully

### Setup

```bash
# Install pre-commit hooks (one-time setup)
poetry run pre-commit install

# Test all files manually
poetry run pre-commit run --all-files

# Check specific files
poetry run pre-commit run --files docs/index.md
```

### Workflow

```bash
# Normal development workflow
git add docs/new-feature.md
git commit -m "Add new feature docs"  # Pre-commit runs automatically!

# If pre-commit finds issues, it will:
# 1. Auto-fix what it can (formatting, etc.)
# 2. Report what needs manual fixing
# 3. Prevent the commit until all issues are resolved
```

## GitHub Actions (Deployment Only)

The GitHub Actions workflow is now **ultra-simple** and **fast**:

1. **Install dependencies** (cached for speed)
2. **Build documentation**
3. **Deploy to GitHub Pages**
4. **Send Discord notification**

**Total CI time: ~2-3 minutes** (vs previous ~8-10 minutes)

## Benefits of This Approach

### 🚀 **Performance**

- **70% faster CI** - No linting/validation on server
- **Cached dependencies** - Faster builds
- **Single job** - No complex workflow dependencies

### 💰 **Cost Efficiency**

- **Minimal GitHub Actions minutes** - Only build+deploy
- **Local validation** - Zero server cost for linting
- **Faster feedback loop** - Issues caught immediately

### 🛡️ **Quality Assurance**

- **Cannot commit broken code** - Pre-commit prevents it
- **Consistent formatting** - Auto-fixed locally
- **Link validation** - Broken links caught early
- **Build validation** - Ensures deployable docs

### 👥 **Developer Experience**

- **Instant feedback** - No waiting for CI
- **Auto-fixing** - Many issues resolved automatically
- **Clear error messages** - Know exactly what to fix
- **Local testing** - Full validation without pushing

## Commands Reference

```bash
# Development
poetry run pre-commit run --all-files    # Check everything
poetry run mkdocs serve                  # Local preview
./check-links.sh                         # Manual link check

# Maintenance
poetry run pre-commit autoupdate        # Update hook versions
poetry run pre-commit clean             # Clean hook cache
```

This setup ensures **high quality documentation** with **minimal CI overhead**! 🎉

# Contributing to Beetween

How to contribute to our internal product documentation.

## Quick Start

**For small updates:**
1. Edit files directly on GitHub
2. Commit with clear message

**For new content:**
1. Use task commands: `task create-feature` or `task create-decision`
2. Fill out template
3. Update navigation in `mkdocs.yml`

## Commands

```bash
# Development
task serve                                    # Local preview
task build                                    # Build site

# Content creation
task create-feature FEATURE_NAME=feature-name
task create-decision DECISION_TITLE="Title" CATEGORY=product
```

## File Organization

- **Features**: `docs/features/[feature-name]/feature.md`
- **Decisions**: `docs/decisions/[category]/adr-XXX-title.md`
- **Product**: `docs/product/` (vision, roadmap, etc.)

## Writing Guidelines

- Be concise and direct
- Use simple language
- Include owner and last updated date
- Focus on decisions and reasoning

## Templates

- Features: Copy `docs/features/_template.md`
- Decisions: Auto-generated with `task create-decision`

## Review Process

**Requires review:**
- New features or major changes
- Process/structure changes

**No review needed:**
- Typo fixes
- Status updates

## Local Setup

```bash
git clone https://github.com/Alter-Dimensions/beetween.git
cd beetween
task setup
task serve
```

Open <http://localhost:8000>

## Navigation Updates

When adding new pages, update `mkdocs.yml` navigation section.

## Help

- Check existing docs first
- Ask in team channels
- Contact document owner listed in files

**Document Owner**: Team Lead

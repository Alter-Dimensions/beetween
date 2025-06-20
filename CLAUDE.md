# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

Beetween is a **documentation-first product development platform** built with MkDocs. It serves as a collaborative hub for documenting the development of the Beet product - a vertical super-aggregator for Indian diaspora entertainment and cultural events.

**Tech Stack:**
- Framework: MkDocs with Material theme
- Language: Python (managed with Poetry)
- Task Runner: Task (Taskfile)
- Deployment: GitHub Pages

## Essential Commands

```bash
# Initial setup
task setup                # Install dependencies and configure pre-commit hooks

# Development
task serve                # Start dev server at http://localhost:8000
task serve-all           # Start dev server accessible from all network interfaces

# Build and deploy
task build               # Build static documentation site
task deploy              # Deploy to GitHub Pages
task clean               # Clean build artifacts

# Feature management
task create-feature FEATURE_NAME=feature-name  # Create new feature documentation
task list-features       # List all available features

# Code quality
task lint                # Run black, isort, and flake8
```

## Architecture and Structure

### Documentation-Centric Architecture

This is NOT a traditional application codebase - it's a documentation platform. The architecture follows a **feature-centric approach** where each product feature has its own documentation folder:

```
docs/
├── features/           # Feature-specific documentation
│   ├── user-auth/     # Each feature gets its own folder
│   ├── pay/           # with standardized structure
│   ├── bites/         
│   ├── notifications/ # NEW: Smart notification system
│   └── [feature]/     
├── software-3.0/      # NEW: AI/agent-ready architecture
├── product/           # Product-level documentation
├── decisions/         # Architecture and tech decisions
└── resources/         # Team resources and guidelines
```

### Key Files

- `mkdocs.yml`: Main configuration file for the documentation site
- `Taskfile.yml`: Task automation definitions
- `pyproject.toml`: Python dependencies and project metadata
- `features/_template.md`: Template for new feature documentation

### Navigation Structure

The site navigation is defined in `mkdocs.yml`. When adding new features or pages, update the navigation structure there to ensure they appear in the site menu.

## Development Workflow

1. **Adding New Features**: Use `features/_template.md` to scaffold a new feature with the standard template
2. **Local Development**: Always use `task serve` to preview changes locally before committing
3. **Documentation Updates**: Focus on clarity and accessibility - avoid technical jargon where possible
4. **No Code Blocks**: This documentation intentionally avoids code examples to stay accessible to all team members

## Important Conventions

- **Feature Documentation**: Each feature must have a single `feature.md` file as its source of truth
- **Asset Organization**: Place images, wireframes, and diagrams in the feature's `assets/` subdirectories
- **Owner Information**: Every document should have an owner and last updated date
- **Markdown Extensions**: The project uses extensive markdown extensions (admonitions, tabs, mermaid diagrams) - see mkdocs.yml for full list

## Common Tasks

### Updating Existing Documentation
1. Edit the relevant markdown files in `docs/`
2. Preview changes with `task serve`
3. Commit changes with descriptive messages

### Adding Images or Diagrams
- Place images in the feature's `assets/` folder
- Use relative paths in markdown: `![Description](assets/image.png)`
- For diagrams, use Mermaid syntax (supported via plugin)

## Project-Specific Context

- **Product Focus**: Beet is a vertical super-aggregator for Indian diaspora entertainment
- **Target Audience**: Internal team documentation (not end-user docs)
- **Key Features**: User authentication, payments (Pay), content (Bites), events (Events), movie booking (Box Office), rewards (Bucks), notifications, user profiles
- **Documentation Philosophy**: Single source of truth, self-contained features, clear ownership, minimal cognitive overhead

## Software 3.0 Integration

The project emphasizes building for the AI-driven future:
- **Natural Language Interfaces**: Every feature accessible through conversational UI
- **Agent-Ready Architecture**: APIs designed for autonomous AI agents
- **Partnership Automation**: AI-driven partner matching and negotiation
- **Predictive Experiences**: Proactive recommendations and notifications

## Partnership-Driven Growth Strategy

All features include comprehensive partnership strategies:
- **Theater Chains**: Revenue sharing for movie bookings
- **Restaurants**: Dining packages and exclusive discounts
- **Event Organizers**: Community-driven event discovery
- **Payment Partners**: Reward-funded cashback programs

## Testing

This documentation platform does not have automated tests. Quality is maintained through:
- Pre-commit hooks for formatting
- Manual review of documentation changes
- Regular team reviews (weekly for features, monthly for roadmap)

## Deployment

The site automatically deploys to GitHub Pages when changes are pushed to the main branch. Manual deployment can be triggered with `task deploy`.

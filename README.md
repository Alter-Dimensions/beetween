# Beetween - Collaborative Product Documentation Hub

Welcome to Beetween! This is our collaborative documentation platform bridging clients, product owners, development, design, testing, and deployment teams for the Beet product.

## 🎯 What is Beetween

Beetween serves as the central knowledge hub where all teams come together to document, track, and align on Beet's product development journey. From initial client requirements to final deployment, every stakeholder has a voice and visibility into the process.

### 🤝 Who Uses Beetween

Clients - Access product roadmaps, feature updates, and project status
Product Owners - Document requirements, user stories, and strategic decisions
Development Teams - Technical specifications, implementation guides, and API docs
Design Teams - Design systems, wireframes, and user experience documentation
Testing Teams - Test plans, quality assurance processes, and bug tracking
Deployment Teams - Release notes, deployment guides, and infrastructure docs

## 📖 What This Documentation Contains

This is **internal team documentation** for building Beet - not end-user documentation. It includes:

- **Product Vision & Strategy** - What we're building and why
- **Feature Specifications** - Detailed requirements for each feature
- **Team Structure & Processes** - How we work together
- **Development Progress** - Current status and next steps
- **Decision History** - Why we made certain choices
- **Lessons Learned** - What we've discovered along the way

## 👥 Who This Is For

### Product Managers

- Track feature requirements and user stories
- Monitor development progress and metrics
- Document product decisions and pivots
- Coordinate team priorities and roadmap

### Developers

- Understand feature requirements and acceptance criteria
- Share technical decisions and implementation details
- Track development status and blockers
- Document lessons learned and best practices

### Designers

- Document user experience decisions and research
- Share wireframes, mockups, and design specifications
- Track usability testing results and insights
- Maintain design system documentation

### Leadership & Stakeholders

- Review product progress and team velocity
- Understand key decisions and their reasoning
- Track success metrics and business impact
- Access high-level status and roadmap information

## 🚀 Quick Start

### Prerequisites

- Python 3.8+
- [Poetry](https://python-poetry.org/) for dependency management
- [Task](https://taskfile.dev/) for running commands (optional but recommended)

### Setup & Run

1. **Clone the repository**

   ```bash
   git clone https://github.com/Alter-Dimensions/beetween.git
   cd beetween
   ```

2. **Install dependencies**

   ```bash
   # Using Task (recommended)
   task setup

   # Or using Poetry directly
   poetry install
   ```

3. **Start the development server**

   ```bash
   # Using Task
   task serve

   # Or using Poetry
   poetry run mkdocs serve
   ```

4. **Open in browser**

   Navigate to [http://localhost:8000](http://localhost:8000)

### Available Commands

```bash
task setup        # Initial setup - install dependencies and configure tools
task serve        # Start development server
task serve-all    # Start server accessible from all network interfaces
task build        # Build the documentation site
task deploy       # Deploy to GitHub Pages
task clean        # Clean build artifacts
task create-feature FEATURE_NAME=feature-name  # Create new feature documentation
task feature-status  # Show status of all features
```

## 📁 Documentation Structure

### Feature-Centric Organization

Each feature gets its own complete documentation folder with a single source of truth:

```
docs/
├── features/
│   ├── README.md           # Feature documentation guidelines
│   ├── _template.md        # Template for new features
│   ├── user-auth/          # User Authentication Feature
│   │   └── feature.md      # Single source of truth for the feature
│   ├── pay/                # Pay Feature
│   │   └── feature.md      # Single source of truth for the feature
│   └── [other-features]/   # Additional features
│       └── feature.md      # Single source of truth for each feature
├── overview/               # Product-level documentation
│   ├── vision.md          # Product vision and goals
│   ├── team.md            # Team structure and roles
│   ├── metrics.md         # Success metrics and KPIs
│   └── roadmap.md         # Product roadmap and timeline
├── decisions/             # Decision history and learnings
└── resources/             # Team resources and guidelines
```

### Why Feature-Centric

- **Self-contained**: Each feature has all information in one place
- **Clear ownership**: Easy to assign features to team members
- **Independent development**: Teams can work on features without conflicts
- **Progress tracking**: Status is visible at the feature level
- **Scalable**: Easy to add new features without reorganizing everything
- **Musk-grade efficiency**: "The best part is no part" - minimal cognitive overhead

## 🤝 How to Contribute

### For Product Managers

1. **Create new features**: Use `task create-feature FEATURE_NAME=new-feature`
2. **Update requirements**: Keep user stories and acceptance criteria current
3. **Track progress**: Update feature status pages regularly
4. **Document decisions**: Record important product decisions and reasoning

### For Developers

1. **Update implementation progress**: Keep status pages current with development progress
2. **Document technical decisions**: Record architecture and technology choices
3. **Share learnings**: Update implementation pages with insights and best practices
4. **Review and approve**: Participate in documentation reviews

### For Designers

1. **Document design decisions**: Record UX research and design rationale
2. **Share design assets**: Keep wireframes, mockups, and prototypes updated
3. **Update testing results**: Document usability testing findings
4. **Maintain design system**: Keep design guidelines current

### Making Changes

1. **Create a branch** for your changes
2. **Edit the relevant markdown files** using any text editor
3. **Test locally** using `task serve` to preview changes
4. **Submit a pull request** with a clear description of changes
5. **Request review** from relevant team members

## 📊 Documentation Standards

### Writing Guidelines

- **Be clear and concise** - Write for busy team members who need information quickly
- **Focus on decisions and reasoning** - Not just what, but why
- **Keep it current** - Update documents as things change
- **Use consistent formatting** - Follow the established templates
- **Include owners and dates** - Every document should have an owner and last updated date

### No Code Blocks

This documentation intentionally avoids code examples to stay accessible to all team members. Technical implementation details are kept high-level and focused on decisions rather than syntax.

### Regular Updates

- **Feature owners** should update their feature documentation weekly
- **Product managers** should review and update roadmap monthly
- **Team leads** should review team structure and processes quarterly
- **Everyone** should suggest improvements and corrections as needed

## 🔄 Maintenance

### Regular Reviews

- **Weekly**: Feature owners update progress and status
- **Monthly**: Product team reviews roadmap and priorities
- **Quarterly**: Full documentation review and cleanup
- **As needed**: Updates when decisions change or pivots occur

### Quality Assurance

- All documents include owner and last updated date
- Links are checked and updated regularly
- Outdated information is archived or removed
- New team members review documentation for clarity

## 🆘 Getting Help

### Documentation Questions

- **Discord**: Post in #docs-help channel
- **Email**: Contact [documentation owner email]
- **Meeting**: Bring up in team standup or planning meetings

### Technical Issues

- **MkDocs problems**: Check [MkDocs documentation](https://www.mkdocs.org/)
- **Task runner issues**: See [Taskfile documentation](https://taskfile.dev/)
- **Poetry problems**: Reference [Poetry documentation](https://python-poetry.org/)

### Content Questions

- **Feature-specific**: Contact the feature owner listed in the document
- **Product strategy**: Ask product managers in #product channel
- **Technical decisions**: Ask tech leads in #dev channel

## 📄 License

This documentation is internal to [Company Name] and contains proprietary information. It is not licensed for external use or distribution.

---

**Repository Owner**: [Product Team Lead Name]
**Last Updated**: June 19, 2025
**Next Review**: [Next quarterly review date]

*This documentation is a living resource - please help keep it current and useful for the whole team!*

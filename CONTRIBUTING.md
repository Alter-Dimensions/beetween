# Contributing to Beet Documentation

Welcome! This guide explains how our team contributes to and maintains our product development documentation.

## 📖 About This Documentation

This is **internal product development documentation** for the Beet team. It helps us:

- Document product decisions and reasoning
- Share knowledge across team members
- Onboard new team members effectively
- Maintain consistency in our processes

## 👥 Who Should Contribute

### Everyone on the Team Should

- Keep their assigned documentation sections current
- Ask questions when something is unclear
- Suggest improvements to documentation structure
- Participate in documentation reviews

### Specific Role Responsibilities

**Product Managers:**

- Update feature requirements and user stories
- Document product decisions and pivots
- Maintain roadmap and priority information
- Keep success metrics and KPIs current

**Developers:**

- Document technical decisions and architecture choices
- Share development insights and lessons learned

**Designers:**

- Document design decisions and user research findings
- Update wireframes, mockups, and design specifications
- Share usability testing results and insights
- Maintain design system documentation

**Team Leads:**

- Review and approve documentation changes
- Ensure documentation standards are followed
- Coordinate documentation reviews and updates
- Make final decisions on documentation structure

## 🚀 How to Contribute

### Quick Updates (Most Common)

For small updates like status changes, progress updates, or minor corrections:

1. **Navigate to the file** you need to update on GitHub
2. **Click the edit button** (pencil icon)
3. **Make your changes** directly in the web interface
4. **Write a clear commit message** describing what you changed
5. **Commit directly to main** (for small updates) or create a pull request

### Larger Changes

For new features, restructuring, or significant content changes:

1. **Create a new branch** from main

   ```bash
   git checkout -b feature/new-dashboard-docs
   ```

2. **Make your changes** using any text editor

3. **Test your changes locally** (optional but recommended)

   ```bash
   task serve
   ```

4. **Commit your changes** with clear messages

   ```bash
   git add .
   git commit -m "Add dashboard feature documentation"
   ```

5. **Push your branch and create a pull request**

   ```bash
   git push origin feature/new-dashboard-docs
   ```

6. **Request review** from relevant team members

### Creating New Features

When starting a new feature, use our template system:

1. **Create the feature structure**

   ```bash
   task create-feature FEATURE_NAME=your-feature-name
   ```

2. **Fill out the templates** with your feature information

3. **Update the navigation** in `mkdocs.yml` to include your new feature

4. **Commit and push** your new feature documentation

## 📝 Documentation Standards

### Writing Guidelines

**Be Clear and Concise**

- Write for busy team members who need information quickly
- Use simple language and avoid unnecessary jargon
- Structure information with clear headings and bullet points
- Get to the point quickly

**Focus on Decisions and Reasoning**

- Explain not just what we're doing, but why
- Document the context behind decisions
- Include alternatives that were considered
- Note lessons learned and insights gained

**Keep It Current**

- Update documents when things change
- Remove or archive outdated information
- Include last updated dates and document owners
- Set reminders to review documentation periodically

**Be Consistent**

- Follow established templates and formats
- Use consistent terminology across documents
- Maintain the same structure for similar document types
- Follow the existing writing style and tone

### Document Structure

Every document should include:

- **Clear title** that explains what the document covers
- **Document owner** - who is responsible for keeping it current
- **Last updated date** - when it was last reviewed and updated
- **Next review date** - when it should be reviewed again (if applicable)

### File Organization

- Use lowercase file names with hyphens: `user-authentication.md`
- Keep related files together in feature folders
- Use descriptive folder names that match our navigation
- Include an `index.md` file in each folder for the main overview

## 🔧 Technical Setup

### Prerequisites

- Python 3.8 or higher
- Poetry for dependency management
- Task runner (optional but recommended)
- Git for version control

### Local Development Setup

1. **Clone the repository**

   ```bash
   git clone https://github.com/Alter-Dimensions/beetween.git
   cd beetween
   ```

2. **Install dependencies**

   ```bash
   task setup
   # or poetry install
   ```

3. **Start the development server**

   ```bash
   task serve
   # or poetry run mkdocs serve
   ```

4. **Open your browser** to <http://localhost:8000>

### Available Commands

```bash
task setup                    # Initial setup with all dependencies
task serve                    # Start development server
task build                    # Build the documentation site
task create-feature NAME=x    # Create new feature documentation
task feature-status           # Show status of all features
task deploy                   # Deploy to GitHub Pages (maintainers only)
```

## 📋 Review Process

### When to Request Reviews

**Always request review for:**

- New feature documentation
- Major changes to existing features
- Changes to team processes or structure
- Updates to documentation standards or templates

**No review needed for:**

- Minor corrections (typos, formatting)
- Updating dates or contact information

### Who to Request Reviews From

**For Product Content:**

- Product Manager for user stories and requirements
- Feature owner for technical implementation details
- Design Lead for UX/UI related documentation

**For Process Changes:**

- Team Lead for workflow or process documentation
- All affected team members for changes that impact their work
- Manager approval for significant process changes

**For Technical Content:**

- Tech Lead for architecture and technical decisions
- Other developers working on related features
- QA Lead for testing and quality processes

### Review Guidelines

**When Reviewing:**

- Focus on accuracy and clarity
- Check that information is current and relevant
- Ensure consistency with existing documentation
- Verify that all necessary information is included
- Suggest improvements for readability and organization

**When Requesting Review:**

- Provide context about what changed and why
- Highlight areas where you want specific feedback
- Include any questions or concerns you have
- Set a reasonable deadline for review completion

## 🎯 Best Practices

### Regular Maintenance

**Weekly Tasks:**

- Update your feature status pages
- Review and update any documents you own
- Check that your contact information is current
- Archive or update outdated information

**Monthly Tasks:**

- Review all documents you're responsible for
- Update roadmaps and timelines
- Check that links and references are still valid
- Suggest improvements to documentation structure

**Quarterly Tasks:**

- Participate in full documentation review
- Update team structure and process documentation
- Review and update documentation standards
- Clean up archived or outdated content

### Quality Checklist

Before submitting changes, verify:

- [ ] Information is accurate and current
- [ ] Document has clear owner and updated date
- [ ] Links work and point to correct resources
- [ ] Formatting is consistent with other documents
- [ ] Content is well-organized with clear headings
- [ ] Language is clear and accessible to all team members
- [ ] Any decisions or changes are explained with reasoning

### Common Mistakes to Avoid

**Don't:**

- Leave documents without owners or update dates
- Use overly technical language that excludes team members
- Create documents that duplicate existing information
- Make major changes without review or discussion
- Let documentation become outdated or incorrect

**Do:**

- Keep information current and relevant
- Write for your audience (the whole team)
- Link to related information rather than duplicating it
- Communicate changes that affect others
- Ask for help when you're unsure about something

## 🆘 Getting Help

### Documentation Questions

- **Discord**: Ask in #docs-help channel
- **Email**: Contact the document owner listed in the file
- **Meeting**: Bring up in team standup or planning meetings

### Technical Issues

- **Setup problems**: Ask in #dev-help channel
- **Tool questions**: Check tool documentation or ask team leads
- **Process questions**: Contact your manager or team lead

### Content Questions

- **Feature-specific**: Contact the feature owner
- **Product strategy**: Ask product managers
- **Technical decisions**: Ask technical leads
- **Design decisions**: Ask design team

## 📞 Contact

**Documentation Maintainers:**

- [Product Manager Name] - Product content and strategy
- [Tech Lead Name] - Technical content and setup
- [Team Lead Name] - Process and team documentation

**For urgent documentation issues:**

- Discord: #docs-urgent
- Email: [team-lead@company.com]

---

**Document Owner**: [Team Lead Name]
**Last Updated**: June 19, 2025
**Next Review**: September 19, 2025

*This contributing guide evolves with our team and processes. Please suggest improvements as you identify them!*

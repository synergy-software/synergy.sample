# 002. Use GitHub repository and tools for Version Control
![SDLC](https://img.shields.io/badge/SDLC-orange) 
![Toolbox](https://img.shields.io/badge/Toolbox-blue)

Date: 2025-03-08

## Status

✅ Accepted

## Context

Version control is essential for managing source code, tracking changes, and enabling collaboration in software development.
We need a reliable and widely adopted version control system to support team workflows, ensure code integrity, and facilitate collaboration.

## Decision

Decision
We will use Git as our version control system and GitHub as our remote repository hosting service.

Justification:
1. Industry Standard – Git is the most widely used version control system, and GitHub is a leading platform for hosting Git repositories.
2. Collaboration & Code Review – GitHub provides features like pull requests, code reviews, and discussions to improve teamwork.
3. Branching & Merging – Git allows efficient branching strategies, enabling parallel development and seamless integration.
4. Access Control & Security – GitHub provides repository visibility settings, role-based access control, and integration with authentication providers.
5. CI/CD Integration – GitHub supports seamless integration with CI/CD pipelines, automation, and DevOps tools.
6. Documentation & Community Support – GitHub offers built-in documentation tools (README, wikis) and a vast developer community for support.

## Consequences

* Positive Outcomes:
  * Improved collaboration, version tracking, and code management.
  * Easier integration with development and deployment workflows.
  * Clear audit trail of changes through commit history and pull requests.
* Potential Challenges:
  * Developers need to be familiar with Git workflows (e.g., branching strategies, rebasing).
  * Requires initial setup of repository structures, access controls, and integration with development tools.

## Implementation Details

* All project source code will be stored in a GitHub repository.
* We will follow a branching strategy (e.g., GitFlow or trunk-based development).
* Code reviews will be enforced via pull requests before merging into the main branch.
* Repository access will be managed using GitHub’s role-based permissions.
* Automated workflows (e.g., CI/CD) will be integrated via GitHub Actions or external tools.

## References

* ▶️ [S01E02 Use GitHub for Version Control (Modern Software Architecture)](https://youtu.be/YZxJj41nQ7A)
* 📚 [Git Handbook](https://guides.github.com/introduction/git-handbook/)

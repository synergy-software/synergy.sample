# 003. Utilize GitHub Issue Tracker for Issue Management
![SDLC](https://img.shields.io/badge/SDLC-orange)

Date: 2025-03-09 | version: 1.0 | Accepted by Marcin Celej (Software Architect)

## Status

Accepted

## Context

Effective issue tracking is crucial for managing tasks, tracking bugs, and organizing feature requests in a structured manner.
A centralized issue-tracking system ensures transparency, accountability, and streamlined collaboration among team members.

## Decision

Policy:

> The software development team must ensure that no work is undertaken without a corresponding issue recorded in an issue tracker.
> Every task, bug fix, feature development, or change must be documented and tracked to maintain transparency, accountability, and project organization.

We will use GitHub Issues as the primary issue tracker for managing all project-related tasks, bugs, enhancements, and discussions.

Justification:

1. Integrated Workflow – GitHub Issues seamlessly integrates with our Git repository, linking issues to commits, pull requests, and branches.
2. Centralized Tracking – All issues, bugs, and feature requests will be logged in one place, ensuring visibility and organization.
3. Collaboration & Transparency – Assigning issues, adding labels, and using milestones improves team coordination and project planning.
4. Automation & Workflows – GitHub Issues supports automation through actions, bots, and project boards, enhancing efficiency.
5. Audit & History – Each issue maintains a history of discussions, changes, and resolutions, ensuring accountability and traceability.
6. Documentation & References – Issues serve as documentation for past decisions, recurring problems, and resolved challenges.

## Consequences

* Positive Outcomes:
  * Streamlined issue management with a direct connection to code and development activities.
  * Enhanced team collaboration through assigned tasks, discussions, and notifications.
  * Improved project organization with labels, milestones, and filtering options.
* Potential Challenges:
  * Requires discipline in consistently logging and updating issues.
  * Team members need to follow best practices for issue tracking (e.g., clear titles, descriptions, and statuses).

## Implementation Details

* All project-related issues will be tracked exclusively in GitHub Issues.
* Developers and stakeholders must log new issues and update their statuses as work progresses.
* Labels, milestones, and assignees will be used for categorization and prioritization.
* Automated workflows (e.g., issue templates, bots) may be introduced to improve tracking and efficiency.

## References

* ▶️ [S01E03 Use GitHub Issue Tracker - Modern Software Architecture](https://youtu.be/7S1QSb9skfw) (8:09)
* 📚 [GitHub Issues](https://docs.github.com/en/issues/tracking-your-work-with-issues/about-issues)
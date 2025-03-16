# 004. Follow Docs as Code practices
![Docs as Code](https://img.shields.io/badge/Docs_as_Code-blue)

Date: 2025-03-10

## Status

Accepted

## Context

Documentation is a critical aspect of software development, ensuring clarity, maintainability, and effective collaboration.
Traditional documentation methods often lead to outdated or inconsistent information.
To ensure documentation remains accurate, version-controlled, and easily accessible, we need a structured approach that integrates with our development workflow.

## Decision

We will adopt the Docs as Code approach, where all documentation is treated as part of the codebase and stored in a Git repository alongside the project’s source code.

Justification:
1. **Version Control & Traceability** – Storing documentation in Git ensures versioning, change tracking, and collaboration, just like source code.
2. **Consistency & Automation** – Docs can follow the same review, CI/CD, and approval processes as the software, reducing inconsistencies.
3. **Single Source of Truth** – Keeping all documentation in the same repository as the code prevents outdated or scattered documentation.
4. **Collaboration & Review** – Using pull requests and issue tracking in Git enables efficient peer reviews and discussions on documentation updates.
5. **Automation & Formatting** – Documentation can be processed with CI/CD pipelines, automatically generating formatted outputs (e.g., HTML, PDF, or Wiki pages).

## Scope

The following types of documentation will be stored and maintained within the Git repository:

* **Analytical Documentation** – Requirements, business logic, and functional specifications.
* **Architectural Details** – Architecture Decision Records (ADRs), system design, and component overviews.
* **Software Process Descriptions** – Development workflows, contribution guidelines, and CI/CD pipelines.
* **Code Diagrams & Implementation Details** – UML diagrams, sequence diagrams, and technical explanations.
* **Testing Documentation** – Test plans, test cases, and automated testing guidelines.
* **User Documentation** – User guides, API documentation, and release notes.

## Consequences

* Positive Outcomes:
  * Documentation remains up-to-date, versioned, and in sync with code changes.
  * Encourages a culture of documentation within the development team.
  * Enables automation for generating and publishing documentation.
  * Improves collaboration through pull requests and reviews.
* Potential Challenges:
  * Requires team members to adopt Markdown, AsciiDoc, or similar text-based documentation formats.
  * Enforcing documentation updates alongside code changes may require discipline and automation.

## Implementation Details

* All project documentation will be stored in the same Git repository as the source code or in a dedicated documentation repository.
* Markdown (`.md`), AsciiDoc (`.adoc`), or other text-based formats will be used for documentation.
* Pull requests will be required for documentation changes to maintain consistency and review processes.
* CI/CD pipelines will be set up to automatically generate and publish documentation to a web portal (e.g., GitHub Pages, ReadTheDocs).

## References

* 📖 [Understanding Docs-as-Code](https://medium.com/@EjiroOnose/understanding-docs-as-code-01b8c7644e23#:~:text=Docs%2Das%2DCode%20is%20a,developers%20use%20for%20writing%20code.)
* 📚 [Markdown guidance](https://docs.microsoft.com/en-us/azure/devops/project/wiki/markdown-guidance?view=azure-devops)

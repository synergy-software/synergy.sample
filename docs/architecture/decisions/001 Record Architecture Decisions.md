# 001. Record architecture decisions
![Docs as Code](https://img.shields.io/badge/Docs_as_Code-blue)

Date: 2025-03-06

## Status

✅ Accepted

## Context

In software development, architectural decisions have a long-term impact on system design, maintainability, and scalability.
Without proper documentation, decisions can become unclear over time, leading to inconsistencies, repeated discussions, or deviations from the intended architecture.
To address this, we need a structured way to document and track architectural decisions.
Moreover, many decisions made throughout the project's lifecycle are not strictly architectural, yet we still want to document them.

## Decision

We will use Architecture Decision Records (ADRs) to document key architectural decisions and maintain an Architecture Decision Log as a centralized index of all recorded decisions.

Justification:
1. **Transparency & Traceability** – ADRs provide a clear record of why and how architectural decisions were made.
2. **Consistency** – Ensures that architectural decisions are documented in a uniform and structured format.
3. **Collaboration & Communication** – Helps team members understand the rationale behind decisions and align on architecture.
4. **Knowledge Retention** – Prevents loss of architectural knowledge when team members change.
5. **Change Management** – Provides historical context for revisiting or modifying previous decisions when necessary.

## Usage Guidelines

Architecture Decision Records (ADRs):

* Each ADR documents a single architectural decision, including context, rationale, consequences, and implementation details.
* ADRs will be written in Markdown (`.md`) files and stored in the project's repository under `/docs/decisions/` location.
* The format will follow best practices, typically including:
  * Context – The problem or situation requiring a decision.
  * Decision – The choice made and why.
  * Consequences – The impact and trade-offs of the decision.
  * Status – Whether the decision is accepted, superseded, or under review.

Architecture Decision Log (ADL):
* A central document that lists all ADRs, serving as an index for easy navigation.
* The ADL will be maintained as a Markdown file ([Log.md](../Log.md)) in the repository.

## Consequences

* Positive Outcomes:
  * Improved documentation and understanding of architectural decisions.
  * Clear historical record of changes in architecture.
  * Facilitates decision-making by referencing past considerations and trade-offs.
* Potential Challenges:
  * Requires discipline in maintaining and updating ADRs.
  * Team members need to adopt a habit of documenting decisions consistently.

## Implementation Details

* New architectural decisions must be documented using the ADR format.
* The Architecture Decision Log must be updated whenever a new ADR is added or modified.
* ADRs will be reviewed during architecture discussions and technical design meetings.
* Superseded ADRs will be marked accordingly but retained for historical reference.

## Q&A

Q: Which tool is highly recommended and identified best suits to prepare the markdown files (.md)?
   * A: Some developers use Rider which has built in support of markdown
   * A: There is a [Visual Studio plugin](https://marketplace.visualstudio.com/items?itemName=MadsKristensen.MarkdownEditor64) that can be used in VS to edit and preview markdown

## References

* ▶️ [S01E02 Architecture Decision Log (Modern Software Architecture)](https://www.youtube.com/watch?v=td3vERoL_KQ&ab_channel=SynergySoftwareArchitecture)
* 📖 [DOCUMENTING ARCHITECTURE DECISIONS](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions)
* 📚 [Markdown guidance](https://docs.microsoft.com/en-us/azure/devops/project/wiki/markdown-guidance?view=azure-devops)
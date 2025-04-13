# 008. Adoption of C4 Model for Software Architecture Design
![Architecture](https://img.shields.io/badge/Architecture-darkviolet)

Date: 2025-04-12 | version: 1.0 | Accepted by Marcin Celej (Software Architect)

## Status

Accepted

## Context

In developing our software system, a well-defined architecture is critical for ensuring functionality, maintainability, and scalability.
A clear architecture allows the team to make informed design decisions, facilitates communication among stakeholders, and provides a roadmap for future development.
To achieve these objectives, it is essential to select an effective architectural modeling approach.

## Decision

We have decided to design the software architecture using the C4 Model, which stands for Context, Container, Component, and Code.
This model provides a structured way to visualize and document the architecture at different levels of abstraction, making it suitable for our needs.

The current model is kept in the [Architecture Model](../../architecture/Architecture%20Model.md) document.

### Rationale

1. **Hierarchical Visualization**: The C4 Model facilitates a hierarchical approach that allows us to view the architecture from high-level overviews (Context) down to detailed implementations (Code), helping to break down complexity.
2. **Improved Communication**: By providing standardized diagrams, the C4 Model fosters better communication among team members and stakeholders, ensuring that everyone has a shared understanding of the architecture and its components.
3. **Focus on System Interactions**: The emphasis on external and internal interactions between actors and components helps clarify how different parts of the system will operate together, which is essential for ensuring a cohesive architecture.
4. **Incremental Development**: The C4 Model promotes an incremental and iterative approach to architecture, allowing for easier adjustments and refinements as the project evolves and requirements change.
5. **Documentation and Maintenance**: With the C4 Model’s framework, we can maintain better architectural documentation that is clear and consistently structured, making it easier to update and reference in the future.
6. **Community Acceptance**: The C4 Model is widely adopted within the software development community and supported by various tools, which will enable us to leverage existing resources and best practices.
7. **Design as Code**: The C4 Model aligns well with our "Docs as Code" philosophy, allowing us to maintain architecture documentation in a version-controlled manner alongside the codebase.

## Consequences

* Team members will need to be trained in the C4 Model to effectively use its diagrams and notation.
* Initial time investment will be required to create the necessary diagrams and documentation.
* The architecture will be documented in a way that may become a central reference point for future development and discussions.

## References

* [C4 Model](https://c4model.com/)
* [C4 Sample with PlantUML](https://github.com/plantuml-stdlib/C4-PlantUML/blob/master/samples/C4CoreDiagrams.md)
* [Architecture Model](../../architecture/Architecture%20Model.md)
* [//]: # (TODO Add link to the video)
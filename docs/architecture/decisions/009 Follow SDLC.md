# 009. Document and follow Software Development Lifecycle (SDLC)
![SDLC](https://img.shields.io/badge/SDLC-orange)

Date: 2025-05-12 | version: 1.0 | Accepted by Marcin Celej (Software Architect)

## Status

Accepted

## Context

In software development, following a structured methodology is crucial for ensuring the project's success.
SDLC frameworks define the stages in the development process, guiding teams through 
planning, creating, testing, and deploying software. 
Choosing an established SDLC helps in managing project risks, improving consistency, 
and fostering communication among team members.

## Decision

We have decided to adopt the Agile SDLC framework (especially Scrum),
incorporating agile methodology for managing our software development process. 
This choice aligns with our objective of delivering high-quality software
in an iterative manner, allowing for flexibility and adaptation to changing project requirements.

### Key Phases of SDLC

1. **Requirement Analysis**: In this initial phase, stakeholders gather and document the system requirements. This includes understanding what the users need, what problem the software will solve, and specifying functional and non-functional requirements.
2. **Planning**: This phase involves defining the scope and resources needed for the project. It includes project planning, estimating costs, scheduling, and risk assessments.
3. **Design**: The design phase translates requirements into a blueprint for development. This includes architectural design, user interface design, and the database design. It specifies how the software will function and how different components will interact.
4. **Development**: During this phase, developers write the actual code based on the design specifications. This includes building the software components, conducting initial testing, and ensuring that the code meets the defined requirements.
5. **Testing**: In the testing phase, the software is rigorously tested to identify and fix defects. Different types of testing (unit, integration, system, acceptance) are conducted to ensure that the software is reliable and free from major issues.
6. **Deployment**: Once the software has been tested and approved, it's deployed to the production environment. Users can then start using the application, and any immediate issues can be addressed.
7. **Maintenance**: After deployment, the software enters the maintenance phase. This involves making updates, fixing bugs, and enhancing features based on user feedback and evolving requirements.

All those phases are iteratively repeated within each agile iteration.
While developing current sprint we shall plan another, analyze future needs, deploy the increment and support all functionalities delivered so far.
We also cannot forget Non-functional requirements (NFR) that should be also mixed in each sprint deliverables.

### Rationale

1. **Improved Adaptability**: Agile allows for quick adjustments based on user feedback and changing requirements, which is essential for meeting client needs effectively.
2. **Enhanced Collaboration**: The Scrum framework promotes frequent communication among team members and stakeholders, fostering a collaborative environment.
3. **Incremental Delivery**: Delivering software in small, manageable increments helps identify issues early in the development cycle, leading to improved software quality.
4. **Focus on User Value**: Agile emphasizes delivering features that provide real value to users, ensuring that the final product meets the intended requirements.
5. **Well-Documented Practices**: Scrum practices has a wealth of literature, community support, and tools that guide teams in its effective implementation.

## Consequences

This decision allows for faster delivery of features and adaptability to changing requirements.
However, it requires continuous engagement from all team members and may lead to scope creep if not managed well.

## References

* ▶️ [Follow SDLC Process](https://youtu.be/amfBqhDvcKE) (10:15)
* 📕 [Development Process](../../process/Development%20Process.md)
* ▶️ [Scrum Essentials in Under 10 Minutes](https://www.youtube.com/watch?v=RtQ3tpq-RuE&t=3s&ab_channel=ScrumAlliance) (10:15)
* 📚 [The SCRUM Guide](https://scrumguides.org/scrum-guide.html)

# 007. Follow Walking Skeleton Approach for Development
![SDLC](https://img.shields.io/badge/SDLC-orange)
![Architecture](https://img.shields.io/badge/Architecture-darkviolet)

Date: 2025-03-31

## Status

Accepted

## Context

The Walking Skeleton approach is a software development strategy that emphasizes creating a minimal but fully functional system 
to validate the architecture and all critical components from the onset. 
This method allows teams to progressively build and refine features within a solid framework,
ensuring that everything necessary for the application’s operation is in place early in the development process.

## Decision

We propose to adopt the Walking Skeleton approach for our upcoming development projects. This entails the following key practices:

1. Initial Setup:
   * Establish a simple, end-to-end implementation that includes the necessary components such as the user interface, backend services, and data storage.
   * This initial version should be able to execute a basic workflow, demonstrating that all components can communicate and function together.
2. Incremental Development:
   * Gradually enhance the Walking Skeleton by adding features, ensuring that each increment maintains the integrity of the entire system.
   * Every new functionality should be tested within the context of the complete system, rather than as isolated segments.
3. Continuous Feedback:
   * Solicit feedback from stakeholders and team members regularly to ensure that the project aligns with organizational goals and user requirements.
   * Use this feedback to inform subsequent iterations and improvements.
4. Maintain Quality:
   * Implement continuous integration (CI) practices to ensure that the Walking Skeleton is always in a deployable state, promoting code quality and reducing integration issues.
   * Conduct automated testing alongside new feature development to ensure that existing functionality is not compromised.

## Consequences

* Positive Outcomes:
  * Early identification of architectural challenges and integration issues, reducing risks associated with late-stage development.
  * Increased stakeholder engagement and satisfaction through regular feedback loops and visibility into the development process.
  * A solid foundation for future feature development, with built-in opportunities for adjustment based on real user feedback.
* Potential Challenges:
  * Initial development may take longer due to the need for a comprehensive setup, as opposed to feature-focused sprints.
  * Teams will need to maintain discipline in adhering to the Walking Skeleton approach to prevent deviations from the established workflow.

## References

* ▶️ [S01E08 Follow Walking Skeleton Approach - Modern Software Architecture](https://youtu.be/xYyhNfAkV-A) (6:44)
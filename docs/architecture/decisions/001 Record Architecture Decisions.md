# 001. Record architecture decisions
![Docs as Code](https://img.shields.io/badge/Docs_as_Code-blue)

Date: 2025-03-06

## Status

Accepted

## Context

To ensure transparency and continuity, we need to document all architectural decisions made in this project.<br/>
Moreover, many decisions made throughout the project's lifecycle are not strictly architectural, yet we still want to document them.

## Decision

All decisions will follow the OODA Loop framework:

![OODA Loop](https://online.visual-paradigm.com/repository/images/70d200a1-bb7f-4ba4-9c57-41e012176f11/ooda-loop-design/ooda-loop-template.png)

Making decisions is not enough — we must also articulate and document them for future reference.

Therefore, we will use Architecture Decision Records (ADRs) along with [Architecture Decisions Log](../Log.md), as described by Michael Nygard in his article: [DOCUMENTING ARCHITECTURE DECISIONS](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions)

All records will be stored as [markdown (.md)](https://docs.microsoft.com/en-us/azure/devops/project/wiki/markdown-guidance?view=azure-devops) files.

## Consequences

See Michael Nygard's article, linked above.

## Q&A

Q: Which tool is highly recommended and identified best suits to prepare the markdown files (.md)?
   * A: Some developers use Rider which has built in support of markdown
   * A: There is a [Visual Studio plugin](https://marketplace.visualstudio.com/items?itemName=MadsKristensen.MarkdownEditor64) that can be used in VS to edit and preview markdown

## References

* ▶️ [S01E02 Modern Software Architecture - Architecture Decision Log](https://www.youtube.com/watch?v=td3vERoL_KQ&ab_channel=SynergySoftwareArchitecture)
* 📖 [DOCUMENTING ARCHITECTURE DECISIONS](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions)
* 📖 [Markdown guidance](https://docs.microsoft.com/en-us/azure/devops/project/wiki/markdown-guidance?view=azure-devops)
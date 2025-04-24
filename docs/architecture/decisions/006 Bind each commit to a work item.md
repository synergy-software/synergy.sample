# 006. Bind every commit in the repository to a work item
![Development](https://img.shields.io/badge/Development-lightgreen)
![Toolbox](https://img.shields.io/badge/Toolbox-brown)

Date: 2025-03-21 | version: 1.0 | Accepted by Marcin Celej (Software Architect)

## Status

Accepted

## Context

In a collaborative development environment, it is essential to maintain visibility and traceability of changes made to the codebase.
This helps in understanding the rationale behind certain changes, ensuring accountability, and enhancing project management capabilities.

## Decision

We propose to enforce a policy where every commit made to the repository must be associated with a corresponding work item.
This can be achieved through the following mechanisms:

We will add work item number to every commit description. 
The work item number will be added in form  of hashtag - like `#1234`<br/>
It will be automated by using local git hook on each developer machine.

To register the hook (locally) simply run (on Windows) [install.bat](../../../.hooks/install.bat) script.

and follow branch naming conventions:

```
#feature/#1234-some-feature-branch-description
#bug/#1234-some-fix-branch-description
#docs/#1234-some-fix-branch-description
```

The hook automatically gets the work item number from the branch name and silently adds it at the commit description beginning (along with other hashtags found in branch name):

```
#1234 #docs: Commit original description
```

This `#number` (and any other `#hashtag`) can be also added manually to the commit description

### Hashtags

Moreover, the team should use set of well known and common #hashtags in the branch names to automatically (or manually) add them to the commit description. E.g.:

<!--
```plantuml
@startmindmap
* Hash tags
++[#Orange] <U+0023>feature
+++_ A new feature
++[#brown] <U+0023>bug
+++_ A bug fix
++[#lightgreen] <U+0023>docs
+++_ Documentation only changes
-- <U+0023>refactor
---_ A code change that neither fixes a bug nor adds a feature
-- <U+0023>test
---_ Adding missing tests or correcting existing tests
-- <U+0023>build
---_ Changes that affect the build system
-- <U+0023>cleanup
---_ Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
-- <U+0023>performance
---_ A code change that improves performance
@endmindmap
```
-->
![Hashtags for commit messages](https://www.plantuml.com/plantuml/png/R9B1JiCm38RlI7i7Ixi0NQK9hWWDmO4R9quJGbxYjf6Qk8fTjZqR1nw9Lo3fjh8AJati___pnSttvzTA5ADw5wp7RdPn3Sye3IZMChieYlNy9MAewGtkNelbykRslYBKFb9k5k_m086sS5PRppUHj-5Nl-dhKPlMKBdTGTUwkj4w4fs9BHivgf_Oz9w2eZeEmA7TWsaoIXAKvUY8LA5HZhbOvZCCMpegGHlK1EYqePWF9W4S8097G6lpTcG_2rKIFGLQwq8DtedaR-u89BVX6Cbehj7EYOxDIT2cTwqz9ZqUw0zGM5N9dTQKU986P2zAVc8sBM7eqp_vQxUShZ19yKcR6RWQjiCKBhUDKogbGqCBg3Xwr0ow6AyZv5rfkEKW2o0rLnE0Zk9W2cOOp__ZTRwB_9709keLfVTqUbC_0000__y30000) <!-- ← Generated image link. Do NOT modify it manually. -->

## Consequences

* Positive Outcomes:
  * Every commit in the repository is bound to a work item
  * Every work item contains set of links to commits connected to it
  * Git blame on every file shows not only commit descriptions but also work items that can be checked for further details
  * Changelog is generated automatically from git changes - combining details from Issue Tracker and git commits kept on release branches
  * Hotspots are automatically tracked in code base just by pointing out files with commits marked with #bug hashtag
* Potential Challenges:
  * Developers are forced to follow branch naming conventions (with hook installed) or to add the work item numbers manually to every commit

## References

* ▶️ [S01E07 Bind every commit in the repository to a work item - Modern Software Architecture](https://youtu.be/-6X551gnXR0) (10:43)
* 📖 Alternatively we could use conventional commits - https://www.conventionalcommits.org
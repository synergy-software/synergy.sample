# Software Development Lifecycle

Here you can find the description of the Software Development Lifecycle (SDLC) process used by Synergy Software team.

## Team

| Role                                     | Team member          |
|------------------------------------------|----------------------|
| Product Owner                            | ??                   |
| Scrum Master                             | Marcin Celej         |
| Development Team<br/>(including testers) | Marcin Celej, ??, ?? |
| Release Manager                          | ??                   |
| Documentalist                            | ??                   |

## Product backlog

Current product backlog is materialized as list of issues at [GitHub Issues Tracker](https://github.com/synergy-software/synergy.sample/issues)<br/>
Sprint backlog (board) can be found at [GitHub Modern Software Architecture Sample Project](https://github.com/orgs/synergy-software/projects/1) (access required).

## Ceremonies

Scrum Master plans recurring ceremonies within the team:
* Sprint planning
* Daily scrum meeting
* Sprint review
* Sprint retrospective
* Product backlog refinements

## Process diagram


Each issue tracked on the sprint board should progress through all the phases outlined in the diagram below.

<!--
```plantuml
@startmindmap
title Synergy Software Development Lifecycle Process (SDLC)

* PROCESS
right side

**[#grey] <&aperture> ANALYSIS
***[#FFBBCC] <&list> ANALYSIS BACKLOG
****_ <&info> Every idea should go through the <&list> ANALYSIS BACKLOG
****_ <&info> Requirements crunching
*** <&people> Requirement refinement meetings
****_ <&person> ANALYST
****_ <&person> PRODUCT OWNER
****_ <&person> DEVELOPER
****_ <&person> TESTER
****[#Orange] <&arrow-circle-right> [REFINEMENT REQUIRED]
*****_ <&info> Each issue when ready should have this status set
****[#Orange] <&arrow-circle-right> [READY FOR DEVELOPMENT]
*****_ <&circle-check> approved by team (refined and ready for development)
***[#FFBBCC] <&list> DEVELOPMENT BACKLOG
****_ <&info> When analysis is done each agreed functionality should jump into <&list> DEVELOPMENT BACKLOG
****_ <&info> <&list> ANALYSIS BACKLOG <&arrow-circle-right> <&list> DEVELOPMENT BACKLOG
***[#LimeGreen] ARTIFACT
****_ <&document> Functional Design Document - ready and refined by team

**[#grey] <&aperture> DEVELOPMENT
***[#FFBBCC] <&list> SPRINT BOARD
****_ <&info> During sprint planning meeting we feed this backlog moving issues here
****_ <&info> <&list> DEVELOPMENT BACKLOG <&arrow-circle-right> <&list> SPRINT BOARD
***[#Orange] <&arrow-circle-right> [IN PROGRESS]
****_ <&person> DEVELOPER
*****_ <&info> Picks up any of the issues marked as [READY FOR DEVELOPMENT]   
*** BRANCH
****_ <&person> DEVELOPER
*****_ create <branch> from <master>
*****_ implement functionality
*****_ <&circle-check> automate defect
*****_ <&circle-check> UT / BDD / WAPIT / Architecture tests
******_ <color:red>~80% coverage
*****_ <&circle-check> verifies changes on local environment
*** PULL REQUEST
****_ <&person> DEVELOPER
*****_ create PR from <branch> <&arrow-circle-right> <master>
*****_ DEV environment (optional)
******_ deployment to DEV environment
******_ <&circle-check> manual verification
****_ automated CI pipeline started to verify the PR
***[#Orange] <&arrow-circle-right> [CODE REVIEW]
****_ <&person> DEVELOPER
*****_ Changes issue status to [CODE REVIEW]
****_ <&person> REVIEWER
*****_ <&circle-check> Performs Code Review
*****_ <&circle-check> PR Approval (first)
***[#Orange] <&arrow-circle-right> [READY FOR QA]
****_ <&person> DEVELOPER
*****_ <&info> When Code Review is finished and PR is approved, developer changes the issue status 
***[#LimeGreen] ARTIFACT
****_ <&document> Reviewed (and approved) Pull Request with dev tests embedded

**[#grey] <&aperture> QA
***[#Orange] <&arrow-circle-right> [QA IN PROGRESS]
****_ <&person> TESTER
*****_ <&info> Tester picks up any of the issues marked as [R4QA] and changes its status to [QA IN PROGRESS]
***[#lightblue] <&beaker> QA environment 
****_ <&person> TESTER
*****_ Deploy the PR
******_ <&info> manually triggered deployment through automated CD pipeline
*****_ <&circle-check> deployment tests
*****_ <&circle-check> manual PR (increment) verification
*****_ <&circle-check> manual regression tests
******_ if needed
****_ <&person> ANALYST
*****_ <&circle-check> Analyst verification
******_ optional
*** PULL REQUEST
****_ <&person> TESTER
*****_ <&circle-check> PR Approval (second)
****_ <&person> DEVELOPER
*****_ <&circle-check> PR merge to <master>
***[#Orange] <&arrow-circle-right> [READY TO RELEASE]
****_ <&person> TESTER
****_ <&info> When everything works fine on the QA environment
****_ <&info> Tester is responsible for attaching evidence of properly working system to each issue (e.g. screenshots)
***[#LimeGreen] ARTIFACT
****_ <&document> Tested and approved increment merged to <master> branch

**[#grey] <&aperture> STAGING
***[#lightblue] <&beaker> STAGING environment
****_ continuous delivery
*****_ <&info> each merged code increment triggers automatic CI/CD pipelines for <master> branch
*****_ <&info> deployment package is being built and auto deployed to STAGING environment
****_ <&person> TESTER
*****_ <&circle-check> Deployment tests
*****_ <&circle-check> Manual smoke tests
*****_ <&circle-check> Manual regression tests
******_ if needed
*** <&arrow-circle-right>  Documentation
****[#Orange] <&arrow-circle-right> [DOCS REQUIRED]
*****_ <&person> RELEASE MANAGER
******_ Marks each issue that requires docs changes with this status
*****_ <&person> DOCUMENTALIST
******_ Verifies all issues marked with [DOCS REQUIRED] status
******_ Documents changes
*******_ as code (markdown)
*******_ embedded within the git repository
***[#LimeGreen] ARTIFACT
****_ Deployment package ready
****_ The package verified on STAGING environment

**[#grey] <&aperture> PROD
*** Release Log
****_ <&person> RELEASE MANAGER
*****_ prepares release notes
******_ as code (markdown) 
******_ embedded within the git repository 
*****_ sends release notes to stakeholders for approval
*****_ <&circle-check> verifies the issues
******_ docs ready?
******_ everything prepared for delivery? 
***[#lightblue] <&beaker> PROD environment
****_ DEPLOYMENT
*****_ Deployment package deployed with automated CD pipeline 
*****_ canary deployment with waves 1, 2, 3
****_ <&person> TESTER
*****_ <&circle-check> Manual smoke tests - after each wave
*****_ <&circle-check> Manual regression tests
*** Docs
****_ <&person> RELEASE MANAGER
*****_ Deliver Release Log to the Customer(s)
*****_ Deliver Documentation
***[#Orange] <&arrow-circle-right> [CLOSED]
****_ <&person> RELEASE MANAGER
*****_ Closes each deployed and delivered issue  
***[#LimeGreen] ARTIFACT
****_ Functionality / bug deployed and delivered

**[#grey] <&aperture> SUPPORT
***_ <color:red>[//]: # (TODO we need to clarify the maintenance processes here)
*** <&person> CUSTOMER
****_ <&circle-check> Friendly Customer verification
***_ TODO
****_ Monitoring
****_ Alerting
****_ Tools

left side
**:==Description
The Software Development Life Cycle (SDLC) is a 
structured process used for developing software applications.
It outlines the stages involved in software development,
ensuring that the final product meets user requirements
and is delivered on time and within budget.
SDLC promotes organized, efficient project management 
and helps ensure high-quality software products.
;
**_ Parts
***_ phases
****_ <&aperture> ANALYSIS
****_ <&aperture> DEVELOPMENT
****_ <&aperture> QA
****_ <&aperture> STAGING
****_ <&aperture> PROD
****_ <&aperture> SUPPORT
***_ roles
****_ <&person> ANALYST
****_ <&person> PRODUCT OWNER
****_ <&person> DEVELOPER
****_ <&person> TESTER
****_ <&person> REVIEWER
****_ <&person> RELEASE MANAGER
****_ <&person> DOCUMENTALIST
***_ environments
****_ <&beaker> DEV
****_ <&beaker> QA
****_ <&beaker> STAGING (aka UAT)
****_ <&beaker> PROD
***_ statuses
****_ <&arrow-circle-right> [REFINEMENT REQUIRED]
****_ <&arrow-circle-right> [READY FOR DEVELOPMENT]
****_ <&arrow-circle-right> [IN PROGRESS]
****_ <&arrow-circle-right> [CODE REVIEW]
****_ <&arrow-circle-right> [READY FOR QA]
****_ <&arrow-circle-right> [QA IN PROGRESS]
****_ <&arrow-circle-right> [READY TO RELEASE]
****_ <&arrow-circle-right> [DOCS REQUIRED]
****_ <&arrow-circle-right> [CLOSED]
***_ backlogs
****_ <&list> ANALYSIS
****_ <&list> DEVELOPMENT
****_ <&list> SPRINT BOARD
***_ <&graph> metrics
****_ <color:red>TODO
***_ ideas
****_ <&circle-check> quality gates
****_ CI/CD pipelines
****_ stable <master>
****_ jet processing
****_ one day user story
****_ Scaling up
*****_ processes
*****_ team
****_ efficiency of
*****_ delivery
*****_ new feature implementation
****_ continuous delivery
****_ feature flags
****_ canary release
***_ tools
****_ <&cog> GitHub Repositories
****_ <&cog> GitHub Issue Tracker
****_ <&cog> IDE
****_ <&cog> ...

@endmindmap
```
-->
![Synergy Software Development Lifecycle Process](https://www.plantuml.com/plantuml/png/l5dDRkF84RuBq3iKO2IGZHaxsUGGJ7QzIukoLuXiQIHv1WF342Yo9VQOP7ExIHlA8I-MGnufhv2gRf9gKQ95xI70O6opYzrLNrTzzSF__li_lwZCardCao3sqcudurd4OBP9c5nlO2PMsPid6RZibKKYZLcImOYlcB_nKMmYXS-KWjxC7VNFkvrkvm8cqt5_C9jrEvAlmmmK3vXUk7WwMqksUOOV_-YbJ6QvPDVWF3YZRxCXIb-GmEtjpKs_Jo8HLzbs6MwS_Zz6upijTh70TPwin3KCNfdS09xWWGf57WMm5f25KkJh47-orXjDsMyvbupCK-3BFF53dgor5CgaJAGHsv42oLOyCR_6Z6KehRQRedrA9EMny_q51CbzxCzX_FLXCDrVTWTV1gFnvD3IV32Rby-VpiRIIzPCOogbUFleSudtyb53VmrFqy7jy65mFtYOmtJm-N4u7RZFvbKRHCyFWIkLCtWBMOAMUS6cn3FqNXaYoHMWcsGv_c1PwyCTznlSZgUbEQI7VNmXxuVCVxa6BqsbU6K1B3UGCI-6de4u02y92gLMGaAmzSJp1hUnpckwyAzagPTuqKQXRVWl40a3Hb1uwAPuwWgT8EC2HNXMmV4zZrFWIIPEEQl92Hk0ExRpqzc8n-mEbKoUmPdEXxTEttAnGFWvWNCDjvK56BwAhnDmYpNuM01ge3Km5xWt1wkbK0FmiybqIDgEdQbRHy7D9GO9g1H_P916NfBGtqNmm1k35S6kVMtf-I-Hm4NnIclQEHM4JB8cR0-0TGJUFLsFElJmWUBsRehizdmqPYqT9zn_KP2dYFO6n4eJKs5IxCaNyd3L52u0O5ZePkeyz7zjSwoFLviXzItH6Z-yXfKKCVmOUofZyhgIuZ5IclQ57KTl3iyy4p7j6p1a_wnHxd4ELt3ZklZ_LsSofBySYMoQuKleHUXYAYkOKh_kYqZ8Jv85r__wsv_-03vIWFJMh75_NEOhZj3v8LsM0f5097pqSPQySYaIiib0DdaSZJJl8MMU0DnaMa1M0jZWHtL4SKDR1-Y9rC1gQ4hB12oDn4Ol8uVKth1GgHaTUqcE5XhRVO-sBGqgxoM0_X1Idh88Wvd8Mj8pF4I_jD5EDvcsS_J-s1qWS5-6Ww-j7BrVN8L98aMYmAEFR6GMTW9cr-m9ayZuiOA-21XctrVEtfg5f-3e5890zLPSgYezjCvJdvsJubhd44irIYD8fLo5HT92bV1HcTW-bAcBoSfvAoeeKJkDuSsvU5gFZYiFEeT97aMwMi5WWpUUXNIq2JrWyP850GkQUVwpqmwupmwyJubshMBXDaSz48Eq7It-5Mz5erbYnj48oySEQV5q5f6EooZNsY-PzuAHYeRj1EXHXLqThNRexDXXeZ920KHaZSafs8dleWor0jIj0hJHY-qDBAPif0HqiHvFaBbqFNI08PfVbGolNYcKh9CoNq62kPXyvDsAzi3UZYwfiaEAe7J9Y6tuUSzvtWbtnNoH1EVjWdTldnXR7KnCOfVIM_B6V8mcZ0RER70a06gyWLGWDrZiKEaZ90O25M6KpCZRTXsr_duHFqWjU7-fI1HVOYz6jR6NPLZ1qfv8305BVDnn1OWIAeH-IWVf6WnlYCLaiIvu3G7rsENw4XIw4akmsitK-MbSfBKol5ULyfLd6em36sGmwRMPXcPpvsxuSFTUG1SYXy12Xy2wCXV84W667A6zHqJQ-a8pdtXygsyHqgeCN-vZVhso8bXfmFUCgPrWXNEADIqMDdHjIqQtiCnvb1cyy8n2r63qZbsj0yHjooJtXWvKB5vOEz6spD4GELKROh73qMXpn_tPmIPsMqteA8HxfAYx2XSKkSTaecnFpqAF-dVTorFZvs-BIPqhhNRtm3ceo2ELviveMF4W2dmfwrBC2BKqfZUj6R2xF-MQ0fDAbtA9QZnbtBD76mRYBJct5ijyhe_XXZ_Md0nCXUAPAFp-tJXszzrKzuVb-XptB1UA0ZmWhZhefqtnJ3CFunPJ5Z5FCHW9Cs9fSOyBP36MuYIAIC-ydGXqlYs0-o0L2RuTIANm0YSSIL0xXM8IB-o5XI8AY1KqsHRfvtYhigrih4w0t4w3_BEbvZOf5EO6nSp3CDZFy1uR4i27ACCTJ4RZRrNRtd3X5VzeTprOjMmnyd5qWfXPzARVUiDfaO8_Vu0VFi1VJcQiVIB2EOMtebodevTs_rtKHC6bsdkQQz2stPGSW6wndol4XSbUaHrjyNrMEzveZSQpYitQgDQFX4A4DHpLXL4AAJo4Sgxck1QDnEtEWEiAyz6wOSztSlJZP3AUcYrtclcdgwldJt06lVdO7TDmXz82eUX7NjMFnXwEWbY2cHFfnOoIYp6FGTS2fFyucu_lxLfgz_fl9SUmnHgdlA7z2XHf37KfDxWN2SLzEUN59qw4Lbb_puM8q6kwdOYjoZdsnSMddtx2OPelkIvbknsYniOfEVJrcDoCntKlYFUYCfdhMKXG6WsvgW9TRw2Bj79Jv9cei4DTTZl334IUcHA4G4HUqbrHyYeYKtDjNxLcfH-w7Qphp0nE9q1w5sjEZ1dK8a2Dz2XEwoBBxAWJKhT3pa0Zqih7ABhGiRIN58owp8Cror0_ifMsZ3Ln2hds4lvFwdxP2g-3QygHuZkEWwWHGTsBNeps2bcKedUJdWn239AFl-N5_BKqgL2MaFWxtSS29ZZgCD6DIIB4WBL2lU5BGssjFjYiBHVzSEsfNPxMbgfCLtzb9rgaYDZ__vj1ym3cAF-yNmKjxDHZsLLc9zHl_w4DRRsextal7ZmwSwkjipDTSQYfetRk_BGl8OlVy_sYyQN30v4JfcodZAXEcygSsiIsBiCNRTBReXpgMpUr-rca_lnWL3RCxcbfBRqKfxKnmzxDIlVRd5JH_q9_CbHDkQJad3NMFvLGhVih7wFxKVEzEmnUm7UMbUHkPHJwn1Hu6qEncARAbdG1CnnW4pFdQPNgguHOFJ5VPypl9PdwD3gh9FOwtGIdaYkSQXEVLXF_dVbnOv-yg5vSHTxsrehAhoYF2pWpaoehECNw6kvuzck-n2AggB2n43uiCTG5oroYUp1P4ncwWzgJoqja_cxd5ypsrJVh_m400F__0m00) <!-- ← Generated image link. Do NOT modify it manually. -->
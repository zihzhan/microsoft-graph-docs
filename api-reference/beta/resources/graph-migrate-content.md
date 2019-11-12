---
title: "Migrate API documentation from beta to v1.0"
description: "Migrate API documentation from beta to v1.0"
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# Migrate API documentation from beta to v1.0

All of the steps in the following table are required if you are adding new workload APIs.

| Step | Owner |
| ---- | ----- |
| 1 – Set up environment | PM, Developer |
| 2 – Collect and update content | PM, Developer |
| 3 – Add table of contents (TOC) entries | PM, Developer, Content Developer |
| 4 – Add change log entries | PM, Developer, Content Developer |
| 5 – Perform technical review | PM, Developer |
| 6 – Publish | Content Developer, Editor |

## Set up environment

1. **(Required)** Notify the Content Development team that the documentation process is beginning for workload APIs and when the documentation is expected to go live. This may be a work item created in the documentation queue, or it might be an email sent to a Content Developer assigned to support the workload.
2. **(Optional)** If you are new to creating documentation, make sure that you are set up to use Markdown and GitHub. For more information about using GitHub and writing in Markdown, see:
    - [Docs Markdown Reference](https://review.docs.microsoft.com/help/contribute/markdown-reference?branch=master)
    - [Download Visual Studio Code](https://code.visualstudio.com/)
3. **(Required)** Create a working branch in GitHub. Always add or update content through a pull request from a personal branch. Do not use the Upload files button on GitHub. If you are submitting a set of changes, be sure to make all your changes in a single branch and not multiple separate branches. This improves processing and publishing efficiency. For more information, see the [Setting up your fork of the repository](https://msgo.azurewebsites.net/add/document/guidelines/manage-your-documentation.html#setting-up-your-fork-of-the-repository) and the [Create a new branch](https://msgo.azurewebsites.net/add/document/guidelines/manage-your-documentation.html#create-a-new-branch) sections of [Working with GitHub](https://msgo.azurewebsites.net/add/document/guidelines/manage-your-documentation.html).

## Collect and update content

1. **(Required)** Review the beta documentation and make a list of all of the resources and APIs.
2. **(Required)** From the list of resources and APIs, add missing API methods, update permissions, error-conditions, and so on. 
3. **(Required)** Remove the include at the top of the topic: `[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]`.
4. **(Required)** Change references of `beta` to `v1.0` in the HTTP examples.
5. **(Required)** After making updates, copy the files from the beta folders to the v1.0 folders.

## Add table of contents entries

**(Required)** Open the v1.0 toc.yml file in the branch that you created and add table of contents (TOC) entries for the APIs that you are migrating. You can copy the TOC structure from the beta TOC to the v1.0 TOC. For more information, see [Microsoft Graph TOC and Topic Title Guidelines](https://msgo.azurewebsites.net/add/document/guidelines/toc-and-topic-title.html).

Note that sometimes a method is relevant and exposed in more than one context in the TOC, to show the potential of Microsoft Graph. For example, a user-centric method like sendMail appears under the **Users >> Mail** node and under the **Mail >> Message** node.

## Add change log entries

**(Required)** Add change log entries for the APIs and resources that you are adding. For more information, see [Microsoft Graph changelog guidelines](https://msgo.azurewebsites.net/add/document/guidelines/changelog.html).

## Publish

**(Required)** Before the API documentation can be published, a content review is performed by the Content Developer and the Editor who merges PRs. After the review process is complete, incorporate any feedback that was provided in the PR. When all feedback has been incorporated, reviewers have signed off, and the APIs have been released live, set the label to **ready to merge**, enter **sign-off** as a comment, and then the articles will be published. 

PRs that are ready to merge are merged before 3 PM. All API Doctor and OPS build validation tests must pass before merging. At or after 3 PM daily, all PRs that have been merged into the master branch are pulled into the live branch to publish to the site.

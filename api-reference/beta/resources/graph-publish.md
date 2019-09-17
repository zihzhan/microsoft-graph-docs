---
title: "Publish API documentation"
description: "Publish API documentation"
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# Publish API documentation

Make sure you complete the previous steps:

- If you are publishing new APIs, make sure that you complete the steps in [create content](graph-create-content.md).
- If you are updating exiting APIs, make sure that you complete the steps in [update existing content](graph-update-content.md).
- If you are migrating content from beta to v1.0, make sure you complete the steps in [migrate content](graph-migrate-update.md).

Following these steps to publish API documentation.

## 1 - Add table of contents (TOC) entries

This is an optional step. If you added new APIs or migrating APIs from beta to v1.0, they need [table of contents (TOC) entries](https://msgo.azurewebsites.net/add/document/guidelines/toc-and-topic-title.html). The TOC helps developers locate conceptual and API pages. Think where your documentation should appear in the TOC, and the TOC titles you want to use. Base this off the existing TOC to maintain consistency across all the content. For more information about how content is structured, see [Microsoft Graph IA pricinples](https://msgo.azurewebsites.net/add/document/guidelines/ia-principles.html).

## 2 - Prepare changelog entries

This is a required step. All new APIs that are added to docs.microsoft.com must be included in the [change log](https://msgo.azurewebsites.net/add/document/guidelines/changelog.html). You also include entries in the changelog when migrating from beta to v1.0.

## 3 - Review PR

Use the commenting capabilities of GitHub in the PR to share feedback and thoughts about the APIs. The technical review generally creates a number of actions and changes. Content developers update what they can, but rely on PMs or Engineers to provide additional technical details as needed. The PR review process can be time consuming; however, it’s necessary to ensure technical accuracy, compliance, and completeness. If you’re on the review chain, you’ll need to approve the PR before it can be published.

## 4 - Map schema

This is a required step. The PM or Engineer submits a schema mapping request and provides the work-in-progress PR for docs and changelog. The schema is mapped to the stagingbeta or stagingv1.0 endpoint and verified, and then is mapped to the beta or v1.0 endpoint and verified. For more information, see [Publish your API to Microsoft Graph](https://msgo.azurewebsites.net/add/publish/#publish-your-api-to-microsoft-graph).

## 5 - Incorporate feedback and publish

After the review process is complete, incorporate any feedback that was provided in the PR. When all feedback has been incorporate and reviewers have signed off, set the label to **ready to merge**, enter **sign-off** as a comment, and then the articles will be published.

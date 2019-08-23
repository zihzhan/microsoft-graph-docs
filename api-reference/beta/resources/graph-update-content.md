---
title: "Update API documentation"
description: "Update API documentation"
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# Update API documentation 

Before you start adding or updating content for publishing APIs on docs.microsoft.com, make sure that you complete the steps in [prerequisites](graph-prerequisites-existing.md)

The following table lists the steps for adding or updating API content.

| Step | Required | Task | Description |
| ---- | ---- | ----------- |
| 1 | No | Manually update files | If you want to make a small change, add the content to the existing markdown files.<br><br>When adding content to existing files, use the information in the following articles:<br><ul><li>[Metadata](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html)</li><li>[Default properties](https://msgo.azurewebsites.net/add/document/guidelines/default-properties.html)</li><li>[Parameters](https://msgo.azurewebsites.net/add/document/guidelines/parameters.html)</li><li>[Enumerations](https://msgo.azurewebsites.net/add/document/guidelines/enumerations.html)</li><li>[Next steps](https://msgo.azurewebsites.net/add/document/guidelines/next-steps-and-see-also.html)</li></ul>|
| 2 | No | Add content to stub files | When you completed the prerequisite steps, you created a set of markdown files that contain the format and CSDL information for the new APIs. The stub files that were created do not contain descriptions for the API or the properties of it. To do this, you need to be set up to use [GitHub](https://msgo.azurewebsites.net/add/document/manage-content/get-started-with-github.html). When adding markdown content for the API, be sure to follow the guidelines in [Autogenerate and author Microsoft Graph reference content](https://msgo.azurewebsites.net/add/document/guidelines/auto-generate-and-author-content.html) and [Microsoft Graph style guidelines](https://msgo.azurewebsites.net/add/document/guidelines/style.html).<br><br>As part of authoring, verify that the descriptions, permissions, properties, methods, relationships, and other details are correct and accurate. This includes relevant examples, request body, and response object examples. If your API relies on other prerequisites, licenses, or other details, include those as well.|
| 3 | Yes | Add metadata | Articles that are published on docs.microsoft.com require [metadata](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html) to be able to identify the owner of the article, track usage, and facilitate search. If you added new APIs, add the appropriate metadata. |
| 4 | Yes | Add table of contents (TOC) entries | If you added new APIs, they may need [TOC entries](https://msgo.azurewebsites.net/add/document/guidelines/toc-and-topic-title.html) in an existing API.<br><br>The table of contents helps developers locate conceptual and API pages. Think where your documentation should appear in the TOC, and the TOC titles you want to use. Base this off the existing TOC to maintain consistency across all the content. For more information about how content is structured, see [Microsoft Graph IA pricinples](https://msgo.azurewebsites.net/add/document/guidelines/ia-principles.html) Contact Laura Graham (lauragra@microsoft.com) to initiate updating and staging the TOC, or David Murray (davidmu@microsoft.com) for assistance with Intune/Azure AD TOCs. |
| 5 | Yes | Prepare changelog entries | All new APIs that are added to docs.microsoft.com must be included in the [change log](https://msgo.azurewebsites.net/add/document/guidelines/changelog.html). |

After adding the API content, the pages can now be [published](graph-publish.md) on docs.microsoft.com.

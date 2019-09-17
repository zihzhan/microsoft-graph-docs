---
title: "Update API documentation"
description: "Update API documentation"
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# Update API documentation 

Before you start adding or updating content for publishing APIs on docs.microsoft.com, make sure that you complete the steps in [prerequisites](graph-prerequisites-existing.md).

The following table lists the steps for adding or updating API content.

## 1 - Manually update files 

This is an optional step. If you want to make a small change, add the content to the existing markdown files.<br><br>When adding content to existing files, use the information in the following articles:

- [Default properties](https://msgo.azurewebsites.net/add/document/guidelines/default-properties.html)
- [Parameters](https://msgo.azurewebsites.net/add/document/guidelines/parameters.html)
- [Enumerations](https://msgo.azurewebsites.net/add/document/guidelines/enumerations.html)
- [Next steps](https://msgo.azurewebsites.net/add/document/guidelines/next-steps-and-see-also.html)

## 2 - Add content to stub files

This is an optional step. If in the prerequisite steps you created a set of markdown files that contain the format and CSDL information for the new APIs, you need to add content to the files. The stub files that were created do not contain descriptions for the API or the properties of it. To do this, you need to be set up to use [GitHub](https://msgo.azurewebsites.net/add/document/manage-content/get-started-with-github.html). When adding markdown content for the API, be sure to follow the guidelines in [Autogenerate and author Microsoft Graph reference content](https://msgo.azurewebsites.net/add/document/guidelines/auto-generate-and-author-content.html) and [Microsoft Graph style guidelines](https://msgo.azurewebsites.net/add/document/guidelines/style.html).

As part of authoring, verify that the descriptions, permissions, properties, methods, relationships, and other details are correct and accurate. This includes relevant examples, request body, and response object examples. If your API relies on other prerequisites, licenses, or other details, include those as well.

## 3 - Add metadata

This is a required step. Articles that are published on docs.microsoft.com require [metadata](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html) to be able to identify the owner of the article, track usage, and facilitate search. If you added new APIs, add the appropriate metadata.

## 4 - Create PR

After the stub files are created, and content and metadata are added, [create the pull request](https://msgo.azurewebsites.net/add/document/guidelines/manage-your-documentation.html) to start the publishing process. Be sure to address any [API Doctor errors](https://msgo.azurewebsites.net/add/document/guidelines/api-doctor-validate-examples.html) that may occur. Set the label in the PR to **do not merge**.

## Next steps

After adding the API content, the pages can now be [published](graph-publish.md) on docs.microsoft.com.

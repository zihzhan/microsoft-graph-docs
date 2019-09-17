---
title: "Create new APIs"
description: "Create new APIs"
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# Create new APIs 

Before you start adding content for publishing APIs on docs.microsoft.com, make sure that you complete the steps in [prerequisites](graph-prerequisites-new.md).

Follow these steps to add API content.

## 1 - Add descriptions and examples

This is a required step. When you completed the prerequisite steps, you created a set of markdown files that contain the format and CSDL information for the new APIs. The stub files that were created do not contain descriptions for the API or the properties of it. When adding markdown content for the API, be sure to follow the guidelines in [Autogenerate and author Microsoft Graph reference content](https://msgo.azurewebsites.net/add/document/guidelines/auto-generate-and-author-content.html) and [Microsoft Graph style guidelines](https://msgo.azurewebsites.net/add/document/guidelines/style.html).

As part of authoring, verify that the descriptions, permissions, properties, methods, relationships, and other details are correct and accurate. This includes relevant examples, request body, and response object examples. If your API relies on other prerequisites, licenses, or other details, include those as well.

## 2 - Add metadata 

This is a required step. Articles that are published on docs.microsoft.com require [metadata](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html) to be able to identify the owner of the article, track usage, and facilitate search.

## 3 - Create conceptual overviews

This is an optional step. Developers often approach the Microsoft Graph with a scenario in mind and want to see if it's supported. [Conceptual articles](https://msgo.azurewebsites.net/add/document/guidelines/conceptual-topics.html) let you showcase the value of your service or feature and provide valuable scenario information for your new APIs.

## 4 - Create PR 

This is a required step. After the stub files are created, and content and metadata are added, [create the pull request](https://msgo.azurewebsites.net/add/document/guidelines/manage-your-documentation.html) to start the publishing process. Be sure to address any [API Doctor errors](https://msgo.azurewebsites.net/add/document/guidelines/api-doctor-validate-examples.html) that may occur. Set the label in the PR to **do not merge**.

## Next steps

After adding the API content, the pages can now be [published](graph-publish.md) on docs.microsoft.com.

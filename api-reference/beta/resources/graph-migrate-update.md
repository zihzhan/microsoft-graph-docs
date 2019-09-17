---
title: "Update migrated APIs"
description: "Update migrated APIs"
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# Update migrated APIs

Before you start migrating APIs from beta to v1.0, make sure that you complete the steps in [prerequisites](graph-prerequisites-migrate.md).

Follow these steps to update the content for migrating from beta to v1.0 in docs.microsoft.com.

## 1 - Update content

This is a required step. From the list of resources, APIs, and conceptual articles, add missing API methods, update permissions, clarify conceptual topics, error-conditions, and so on. After making updates, copy the files from the beta folders to the v1.0 folders.

## 2 - Create PR 

This is a required step. After the beta files are identified and updated, [create the pull request](https://msgo.azurewebsites.net/add/document/guidelines/manage-your-documentation.html) to start the publishing process. Be sure to address any [API Doctor errors](https://msgo.azurewebsites.net/add/document/guidelines/api-doctor-validate-examples.html) that may occur. Set the label in the PR to **do not merge**.

## Next steps

After migrating the content, the pages can now be [published](graph-publish.md) on docs.microsoft.com.

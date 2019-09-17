---
title: "Prerequisites for updating API documentation"
description: "Prerequisites for updating API documentation"
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# Prerequisites for updating API documentation

The following table lists the prerequisite steps for updating API documentation in docs.microsoft.com.

## 1 - Create a doc work item

This is a required step. To start the migration process, create a [doc workitem](https://identitydivision.visualstudio.com/Technical%20Content/_workitems/create/Product%20Backlog%20Item?templateId=09046396-030b-451d-842b-9b0d931f50dc&ownerId=7eda0824-7eb2-4194-8319-b15a79747b34) with a proposed go-live date.

For best results, include links to:

- The API review process documents
- Scenarios to be documented
- Sample endpoint calls (with prerequisites/requirements) and sample responses

## 2 - Document new permissions

This is an optional step. If the changes that you are making require new permissions, you must document them. (Jackson’s proposed process can be linked to from here).

## 3 - Create initial pages

This is an optional step. If a new API or resource has been introduced into your workload or a large scale update needs to be made to existing API articles (where overwriting the existing articles is preferred over updating them), create initial pages using the stub generator scripts. The stub generator scripts produce stub markdown files based on the definitions in the CSDL file.

Each version of an API has its own reference page. For example, there is one message.md file for the message entity in v1.0, and another message.md file for beta. Usually, an API debuts in beta, so you would create a topic only for beta.

## Next steps

After completing the prerequisite steps, you can now [update content](graph-update-content.md).

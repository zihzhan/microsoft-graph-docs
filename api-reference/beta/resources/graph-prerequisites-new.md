---
title: "Prerequisites for new API documentation"
description: "Prerequisites for new API documentation"
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# Prerequisites for new API documentation

Follow these prerequisite steps to add API documentation to docs.microsoft.com.

## 1 - Create a doc work item

This is a required step. To start the documentation process, create a [doc workitem](https://identitydivision.visualstudio.com/Technical%20Content/_workitems/create/Product%20Backlog%20Item?templateId=09046396-030b-451d-842b-9b0d931f50dc&ownerId=7eda0824-7eb2-4194-8319-b15a79747b34) with a proposed go-live date. 

For best results, include links to:

- The API review process documents
- Scenarios to be documented
- Sample endpoint calls (with prerequisites/requirements) and sample responses

## 2 - Document new permissions 

This is an optional step. If the APIs that you are adding require new [permissions](https://docs.microsoft.com/graph/permissions-reference?context=graph%2Fapi%2F1.0&view=graph-rest-1.0), you must document them. ([Jackson’s proposed process](https://microsoft-my.sharepoint-df.com/:w:/p/jawoods/EZjCjC1XMKxCgzBzlt27cHkB_YhLpS392mRDZ3NgjFCazQ?wdLOR=c7A4B5367-A555-41D3-9046-6222A635F3D0) can be linked to from here).

## 3 - Create initial pages 

This is a required step. Microsoft Graph uses CSDL (and XML format) for defining its API surface. The first step in creating new API documentation is to run the [stub generator scripts](https://msgo.azurewebsites.net/add/document/guidelines/stub-generator.html). The stub generator scripts produce stub markdown files based on the definitions in the CSDL file.

Each version of an API has its own reference page. For example, there is one message.md file for the message entity in v1.0, and another message.md file for beta. Usually, an API debuts in beta, so you would create a topic only for beta.

## Next steps

After completing the prerequisite steps, you can now [add content](graph-create-content.md) in the stub files that were created.

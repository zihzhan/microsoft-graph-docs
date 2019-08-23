---
title: "Prerequisites for updating API documenation"
description: "Prerequisites for updating API documenation"
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# Prerequisites for updating API documenation

The following table lists the prerequisite steps for updating API documentation in docs.microsoft.com.

| Step | Required | Task | Description |
| ---- | ---- | ----------- |
| 1 | Yes | Create a doc work item | To start the documentation process, create a [doc workitem](https://identitydivision.visualstudio.com/Technical%20Content/_workitems/create/Product%20Backlog%20Item?templateId=09046396-030b-451d-842b-9b0d931f50dc&ownerId=7eda0824-7eb2-4194-8319-b15a79747b34) with a proposed go-live date. For best results, include links to: <br><ul><li>The API review process documents</li><li>Scenarios to be documented</li><li>Sample endpoint calls (with prerequisites/requirements) and sample responses.</li></ul> |
| 2 | No | Document new permissions | If the changes that you are making require new [permissions](https://docs.microsoft.com/graph/permissions-reference?context=graph%2Fapi%2F1.0&view=graph-rest-1.0), you must document them. ([Jackson’s proposed process](https://microsoft-my.sharepoint-df.com/:w:/p/jawoods/EZjCjC1XMKxCgzBzlt27cHkB_YhLpS392mRDZ3NgjFCazQ?wdLOR=c7A4B5367-A555-41D3-9046-6222A635F3D0) can be linked to from here).  |
| 3 | Yes | Create initial pages | If a new API or resource has been introduced into your workload or a large scale update needs to be made to existing API articles (where overwriting the existing articles is preferred over updating them), create initial pages using the [stub generator scripts](https://msgo.azurewebsites.net/add/document/guidelines/stub-generator.html). The stub generator scripts produce stub markdown files based on the definitions in the CSDL file.<br><br> Each version of an API has its own reference page. For example, there is one message.md file for the message entity in v1.0, and another message.md file for beta. Usually, an API debuts in beta, so you would create a topic only for beta.|

After completing the prerequisites, you can now [update content](graph-update-content.md).

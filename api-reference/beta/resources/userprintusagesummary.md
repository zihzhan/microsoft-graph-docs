---
title: "userPrintUsageSummary resource type"
description: "Represents print-related statistics for a particular user."
localization_priority: Normal
author: "BraedenP"
ms.prod: "Universal Print"
---

# userPrintUsageSummary resource type

Represents print-related statistics for a particular user.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|user|[identity](identity.md)|The user that the statistics pertain to.|
|userPrincipalName|string|The principal name of the user that the statistics pertain to.|
|completedJobCount|int32|The number of jobs the user completed.|
|incompleteJobCount|int32|The number of jobs the user submitted but did not complete.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.userPrintUsageSummary"
}-->

```json
{
  "user": {"@odata.type": "microsoft.graph.identity"},
  "userPrincipalName": "String",
  "completedJobCount": 1,
  "incompleteJobCount": 1
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "userPrintUsageSummary resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
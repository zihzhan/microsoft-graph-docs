---
title: "printUsageSummary resource type"
description: "Represents print-related statistics."
localization_priority: Normal
author: "BraedenP"
ms.prod: "Universal Print"
---

# printUsageSummary resource type

Represents print-related statistics.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|completedJobCount|int32|The number of jobs the user completed.|
|incompleteJobCount|int32|The number of jobs the user submitted but did not complete.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printUsageSummary"
}-->

```json
{
    "completedJobCount": 1,
    "incompleteJobCount": 1
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printUsageSummary resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
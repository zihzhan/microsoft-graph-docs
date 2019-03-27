---
title: "groupPrintUsageSummary resource type"
description: "Represents print-related statistics for a particular group."
localization_priority: Normal
author: "BraedenP"
ms.prod: "Universal Print"
---

# groupPrintUsageSummary resource type

Represents print-related statistics for a particular group.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|group|[identity](identity.md)|The group that the statistics pertain to. Read-only.|
|groupMail|string|The email address of the group that the statistics pertain to. Read-only.|
|completedJobCount|int32|The number of jobs completed by all users in the group. Read-only.|
|incompleteJobCount|int32|The number of jobs submitted (but not completed) by all users in the group. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.groupPrintUsageSummary"
}-->

```json
{
  "group": {"@odata.type": "microsoft.graph.identity"},
  "groupMail": "String",
  "completedJobCount": 1,
  "incompleteJobCount": 1
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "groupPrintUsageSummary resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
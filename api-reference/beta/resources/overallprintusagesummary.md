---
title: "overallPrintUsageSummary resource type"
description: "Represents print-related statistics for a particular group."
localization_priority: Normal
author: "BraedenP"
ms.prod: "Universal Print"
---

# overallPrintUsageSummary resource type

Represents print-related statistics for a particular group.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|topUsers|Collection([userPrintUsageSummary](userprintusagesummary.md))|The users that have the highest print usage statistics in the tenant (the length of this list is set by the caller, with a maximum of 10). Read-only.|
|topPrinters|Collection([printerUsageSummary](printerusagesummary.md))|The printers that have the highest print usage statistics in the tenant (the length of this list is set by the caller, with a maximum of 10). Read-only.|
|daysInPeriod|int32|The number of days in the selected time period.|
|activeUsersCount|int32|The number of users who submitted one or more print jobs during the period. Read-only.|
|activePrintersCount|int32|The number of printers that processed one or more print jobs during the period. Read-only.|
|totalJobsProcessed|int32|The total number of jobs processed during the period. Read-only.|
|totalIncompleteJobs|int32|The total number of incomplete jobs submitted during the period. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.overallPrintUsageSummary"
}-->

```json
{
    "topUsers": [
        {"@odata.type": "microsoft.graph.userPrintUsageSummary"}
    ],
    "topPrinters": [
        {"@odata.type": "microsoft.graph.printerUsageSummary"}
    ],
    "daysInPeriod": 1,
    "activeUsersCount": 1,
    "activePrintersCount": 1,
    "totalJobsProcessed": 1,
    "totalIncompleteJobs": 1
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "overallPrintUsageSummary resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
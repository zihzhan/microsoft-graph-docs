---
title: "printerUsageSummary resource type"
description: "Represents print-related statistics for a particular printer."
localization_priority: Normal
author: "BraedenP"
ms.prod: "Universal Print"
---

# printerUsageSummary resource type

Represents print-related statistics for a particular printer.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|printer|microsoft.graph.directoryObject|The printer that the statistics pertain to. Read-only.|
|printerDisplayName|string|The display name of the printer that the statistics pertain to. Read-only.|
|printerManufacturer|string|The manufacturer of the printer that the statistics pertain to. Read-only.|
|printerModel|string|The model of the printer that the statistics pertain to. Read-only.|
|completedJobCount|int32|The number of jobs the printer completed. Read-only.|
|incompleteJobCount|int32|The number of jobs the printer submitted but did not complete. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printerUsageSummary"
}-->

```json
{
    "printer": {"@odata.type": "microsoft.graph.directoryObject"},
    "printerName": "String",
    "printerManufacturer": "String",
    "printerModel": "String",
    "completedJobCount": 1,
    "incompleteJobsCount": 1
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printerUsageSummary resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
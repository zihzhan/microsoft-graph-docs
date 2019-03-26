---
title: "printJobStatus resource type"
description: "Represents the current status of a print job."
localization_priority: Normal
author: "BraedenP"
ms.prod: "Universal Print"
---

# printJobStatus resource type

Represents the current status of a print job.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|processingState|printJobProcessingState|The print job's current processing state. Valid values are described in the `printJobProcessingState enum` table below. Read-only.|
|processingStateDescription|string|A human-readable description of the print job's current processing state. Read-only.|
|acquiredByPrinter|boolean|True if the job was acquired by a printer; false otherwise. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printJobStatus"
}-->

```json
{
    "processingState": "processing",
    "processingStateDescription": "The print job is currently being processed.",
    "acquiredByPrinter": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printJobStatus resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
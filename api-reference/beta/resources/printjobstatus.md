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

## printJobProcessingState enum

|Member|Value|Description|
|:---|:---|:---|
|pending|0|The print job is pending processing by the printer.|
|processing|1|The print job is currently being processed by the printer.|
|paused|2|The print job has been paused by a user.|
|stopped|3|The print job has been stopped because an issue with the printer needs to be addressed before the job can continue. More information can be found in the printer state resource.|
|completed|4|The print job has completed successfully and no further processing will take place.|
|canceled|5|The print job has been canceled by a user and no further processing will take place.|
|aborted|6|The print job has been aborted by a user or the printer and no further processing will take place.|

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
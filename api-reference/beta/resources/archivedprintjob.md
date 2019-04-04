---
title: "archivedPrintJob resource type"
description: "Represents the current status of a print job."
localization_priority: Normal
author: "BraedenP"
ms.prod: "Universal Print"
---

# archivedPrintJob resource type

Represents an archived print job that is used for generating reports and statistics. Contains a subset of the fields present on an active print job.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|string|The archived print job's GUID. Read-only.|
|printer|[directoryObject](directoryobject.md)|The printer that the job was queued for. Read-only.|
|createdBy|[userIdentity](useridentity.md)|The user who created the print job. Read-only.|
|processingState|printJobProcessingState|The print job's final processing state. Valid values are described in the `printJobProcessingState enum` table below. Read-only.|
|createdDateTime|DateTimeOffset|The dateTimeOffset when the job was created. Read-only.|
|acquiredDateTime|DateTimeOffset|The dateTimeOffset when the job was acquired by the printer, if any. Read-only.|
|completionDateTime|DateTimeOffset|The dateTimeOffset when the job was completed, canceled or aborted. Read-only.|
|acquiredByPrinter|boolean|True if the job was acquired by a printer; false otherwise. Read-only.|
|copiesPrinted|int32|The number of copies that were printed. Read-only.|
|pageCount|int32|The total number of pages that were printed. Read-only.|
|blackAndWhitePageCount|int32|The number of black and white pages that were printed. Read-only.|
|colorPageCount|int32|The number of color pages that were printed. Read-only.|
|simplexPageCount|int32|The number of simplex (single-sided) pages that were printed. Read-only.|
|duplexPageCount|int32|The number of duplex (double-sided) pages that were printed. Read-only.|

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
  "@odata.type": "microsoft.graph.archivedPrintJob"
}-->

```json
{
    "id": "String (identifier)",
    "printer": {"@odata.type": "microsoft.graph.directoryObject"},
    "createdBy": {"@odata.type": "microsoft.graph.userIdentity"},
    "processingState": {"@odata.type": "microsoft.graph.directoryObject"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "archivedPrintJob resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
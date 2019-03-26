---
title: "printJob resource type"
description: "Represents a print job that has been queued for a printer."
localization_priority: Normal
author: "BraedenP"
ms.prod: "Universal Print"
---

# printJob resource type

Represents a print job that has been queued for a printer.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get printJob](../api/printjob_get.md) | [printJob](printjob.md) | Read properties and relationships of printJob object. |
|[cancelPrintJob](../api/printjob_cancelprintjob.md)|None|Cancel the print job.|

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|string|The printer's GUID. Read-only.|
|createdDateTime|DateTimeOffset|The DateTimeOffset when the job was created. Read-only.|
|status|[printJobStatus](printjobstatus.md)|The status of the print job. Read-only.|

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|printer|[printer](printer.md)|The printer that the job is queued for. Read-only.|
|createdBy|[userIdentity](useridentity.md)| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printJob"
}-->

```json
{
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "status": {"@odata.type": "microsoft.graph.printJobStatus"},
  "printer": {"@odata.type": "microsoft.graph.printer"},
  "createdBy": {"@odata.type": "microsoft.graph.userIdentity"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printJob resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
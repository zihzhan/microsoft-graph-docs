---
title: "printer resource type"
description: "The printer resource represents a physical printer device that has been registered by using a Universal Print subscription. Printer resources can be used to manage printer settings, printer metadata and registration status."
localization_priority: Normal
author: "BraedenP"
ms.prod: "Universal Print"
---

# printer resource type

Represents a physical printer device that has been registered by using a Universal Print subscription. Printer resources can be used to manage printer settings, printer metadata and registration status.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get printer](../api/printer_get.md) | [printer](printer.md) | Read properties and relationships of printer object. |
| [List jobs](../api/printer_list_jobs.md) | [printJob](printjob.md) collection | Get a list of print jobs that are queued for processing by the printer. |
| [Update](../api/printer_update.md) | [printer](printer.md) | Update the printer object. |
| [Delete](../api/printer_delete.md) | None | Unregister the physical printerfrom the Universal Print service. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|capabilities|[printerCapabilities](printercapabilities.md)|Lists the capabilities reported by the printer. Read-only.|
|id|String| Read-only.|
|isShared|Boolean|True if the printer is shared; false otherwise. Read-only.|
|location|[printerLocation](printerlocation.md)|The physical and/or organizational location of the printer.|
|manufacturer|String|The manufacturer reported by the printer. Read-only.|
|model|String|The model name reported by the printer. Read-only.|
|name|String|The name of the printer.|
|registeredDateTime|DateTimeOffset|The DateTimeOffset when the printer was registered. Read-only.|
|status|[printerStatus](printerstatus.md)|The processing status of the printer, including any errors. Read-only.|

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|jobs|[printJob](printjob.md) collection| Read-only. Nullable.|
|share|[printerShare](printershare.md)| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printer"
}-->

```json
{
  "id": "String (identifier)",
  "name": "String",
  "manufacturer": "String",
  "model": "String",
  "isShared": true,
  "registeredDateTime": "String (timestamp)",
  "capabilities": {"@odata.type": "microsoft.graph.printerCapabilities"},
  "location": {"@odata.type": "microsoft.graph.printerLocation"},
  "status": {"@odata.type": "microsoft.graph.printerStatus"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printer resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
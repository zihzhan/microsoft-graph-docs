---
title: "printerStatus resource type"
description: "Represents the processing status of the printer, including any errors."
localization_priority: Normal
author: "BraedenP"
ms.prod: "Universal Print"
---

# printerStatus resource type

Represents the processing status of the printer, including any errors.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|processingState|printerProcessingState|The current processing state. Valid values are described in the `printerProcessingState enum` table below. Read-only.|
|processingStateReasons|Collection(printerProcessingStateReason)|The list of reasons describing why the printer is in the current state. Valid values are described in the `printerProcessingStateReason` table below. Read-only.|
|processingStateDescription|string|A human-readable description of the printer's current processing state. Read-only.|

## printerProcessingState enum

|Member|Value|Description|
|:---|:---|:---|
|idle|0|The printer is idle and ready to accept new print jobs.|
|processing|1|The printer is currently processing a print job and will process any pending jobs upon completion.|
|stopped|2|The printer encountered an issue (e.g., ran out of paper in the active tray) and cannot continue the current print job until the issue is addressed. See the printerProcessingStateReasons value(s) or the printerProcessingStateDescription value for more information.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|

## printerProcessingStateReason enum

|Member|Value|Description|
|:---|:---|:---|
|paused|0|Someone paused an ongoing print job.|
|disconnected|1|The connection to the printer was lost or cannot be established.|
|mediaJam|2|Media in one or more trays is jammed.|
|mediaNeeded|3|Media in the currently-used input tray needs to be replaced before the job can continue.|
|mediaLow|4|Media in one or more trays is almost exhausted.|
|mediaEmpty|5|Media in one or more trays is exhausted.|
|coverOpen|6|One or more covers are open.|
|interlockOpen|7|One or more interlock devices are open.|
|queueFull|8|The printer's spooler queue is full and new jobs cannot be queued.|
|outputTrayMissing|9|One or more output trays are missing.|
|outputAreaFull|10|One or more output trays are full and cannot accept more media.|
|markerSupplyLow|11|One or more marker sources (e.g., ink, toner or ribbon) are low.|
|markerSupplyEmpty|12|One or more marker sources (e.g., ink, toner or ribbon) are exhausted.|
|unknownFutureValue|13|Evolvable enumeration sentinel value. Do not use.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printerStatus"
}-->

```json
{
    "processingState": "stopped",
    "processingStateReasons": ["mediaEmpty"],
    "processingStateDescription": "The color toner catridge is empty and needs to be replaced to continue printing."
},

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printerStatus resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
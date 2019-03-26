---
title: "printerCapabilities resource type"
description: "Represents the capabilities reported by a printer."
localization_priority: Normal
author: "BraedenP"
ms.prod: "Universal Print"
---

# printerCapabilities resource type

Represents the capabilities reported by a printer.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|isColorPrintingSupported|Boolean|True if color printing is supported by the printer; false otherwise. Read-only.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printerCapabilities"
}-->

```json
{
  "isColorPrintingSupported": true
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printerCapabilities resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
---
title: "printerShare resource type"
description: "Represents a printer that is intended to be discoverable by print clients."
localization_priority: Normal
author: "BraedenP"
ms.prod: "Universal Print"
---

# printerShare resource type

Represents a printer that is intended to be discoverable by print clients.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get printerShare](../api/printershare_get.md) | [printerShare](printershare.md) | Read properties and relationships of printerShare object. |
| [Update](../api/printershare_update.md) | [printerShare](printershare.md) | Update printerShare object. |
| [Delete](../api/printershare_delete.md) | None | Unshare a printer. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|Guid|Read-only.|
|name|String|The name of the printer share that print clients should display.|
|createdDateTime|DateTimeOffset|The DateTimeOffset when the printer share was created. Read-only.|

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|printer|[printer](printer.md)|The printer that this printer share is related to. Update this property by using an entity reference to another printer (e.g., `"printer@odata.bind": "https://graph.microsoft/v1.0/print/printers/{id}"`) to change the printer that the printer share is related to.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printerShare"
}-->

```json
{
  "id": "Guid (identifier)",
  "name": "String",
  "createdDateTime": "String (timestamp)"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printerShare resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
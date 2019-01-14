---
title: "print resource type"
description: "The Print feature is used to discover print printServiceEndpoints that can be used to use and manage printers and print jobs within the Microsoft Universal print service."
localization_priority: Normal
author: "BraedenP"
ms.prod: "Universal Print service"
---

# print resource type

The Print feature is used to discover print [printServiceEndpoints](printserviceendpoint.md) that can be used to use and manage printers and print jobs within the Microsoft Universal print service.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List printServices](../api/print_list_services.md) | [printService](printservice.md) collection | Get a service object collection. |

## Properties
None

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|services|[printService](printservice.md) collection| Read-only. Nullable.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "print resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
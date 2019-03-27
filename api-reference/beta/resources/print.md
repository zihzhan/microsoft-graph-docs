---
title: "print resource type"
description: "When accompanied by a Universal Print subscription, the Print feature enables management of printers and discovery of printServiceEndpoints that can be used manage printers and print jobs within Universal Print."
localization_priority: Normal
author: "BraedenP"
ms.prod: "Universal Print"
---

# print resource type

When accompanied by a Universal Print subscription, the Print feature enables management of printers and discovery of [printServiceEndpoints](printserviceendpoint.md) that can be used manage printers and print jobs within Universal Print.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create printerShare](../api/print_post_printershares.md) | [printerShare](printershare.md) | Create a new printer share by posting to the printerShares collection. |
| [List printerShares](../api/print_list_printershares.md) | [printerShare](printershare.md) collection | Get a list of printer shares. |
| [List printers](../api/print_list_printers.md) | [printer](printer.md) collection | Get a list of printers. |
| [List services](../api/print_list_services.md) | [printService](printservice.md) collection | Get a list of available Universal Print service endpoints. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "print resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
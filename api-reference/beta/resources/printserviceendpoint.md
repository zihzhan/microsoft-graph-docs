---
title: "endpoint resource type"
description: "An endpoint contains URI and identifying information for a print service instance."
localization_priority: Normal
author: "BraedenP"
ms.prod: "Universal Print service"
---

# endpoint resource type

An endpoint contains URI and identifying information for a print service instance.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get printServiceEndpoint](../api/endpoint_get.md) | [printServiceEndpoint](printserviceendpoint.md) | Read properties and relationships of endpoint object. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|displayName|String|A human-readable display name for the endpoint.|
|name|String|A unique name that identifies the service that the endpoint provides. Possible values are: `discovery` (Discovery Service), `notification` (Notification Service), `ipp` (IPP Service) and `registration` (Registration Service). Read-only.|
|uri|String|The URI that can be used to access the service.|

## Relationships
None


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.print.printServiceEndpoint"
}-->

```json
{
  "displayName": "String",
  "name": "String (identifier)",
  "uri": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "endpoint resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
---
title: "printService resource type"
description: "Represents an Azure AD tenant-specific description of a print service instance. Services exist for each component of the printing infrastructure (e.g., discovery, notifications, registration and IPP) and has one or more endpoints."
localization_priority: Normal
author: "BraedenP"
ms.prod: "Universal Print"
---

# printService resource type

Represents an Azure AD tenant-specific description of a print service instance. Services exist for each component of the printing infrastructure (e.g., discovery, notifications, registration and IPP) and has one or more endpoints.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get service](../api/printservice_get.md) | [printService](printservice.md) | Read properties and relationships of service object. |
| [List endpoints](../api/printservice_list_endpoints.md) | [printServiceEndpoint](printserviceendpoint.md) collection | Get a list of endpoints that this service supports. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|Guid|Read-only.|

## Relationships
| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|endpoints|[printServiceEndpoint](printserviceendpoint.md) collection| Endpoints that can be used to access the service. Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printService"
}-->

```json
{
  "id": "Guid (identifier)",
  "endpoints": [
    {
      "displayName": "String",
      "name": "String (identifier)",
      "uri": "String"
    }
  ]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printService resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
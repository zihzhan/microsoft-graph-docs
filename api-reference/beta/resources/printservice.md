---
title: "printService resource type"
description: "A printService is an Azure AD tenant-specific description of a print service instance. Services exist for each component of the printing infrastructure (e.g., discovery, notifications, registration and IPP) and has one or more endpoints. Check the service's "state" to determine whether that service is enabled for the user's Azure AD tenant."
localization_priority: Normal
author: "BraedenP"
ms.prod: "Universal Print service"
---

# printService resource type

A printService is an Azure AD tenant-specific description of a print service instance. Services exist for each component of the printing infrastructure (e.g., discovery, notifications, registration and IPP) and has one or more endpoints.

Check the service's "state" to determine whether that service is enabled for the user's Azure AD tenant.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get service](../api/printservice_get.md) | [printService](printservice.md) | Read properties and relationships of service object. |
| [List endpoints](../api/printservice_list_endpoints.md) | [printServiceEndpoint](printserviceendpoint.md) collection | Get a endpoint object collection. |

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|Guid| Read-only.|
|state|string| Whether the service is enabled for the caller's tenant. Possible values are: `enabled`, `disabled`.|

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
  "@odata.type": "microsoft.graph.print.printService"
}-->

```json
{
  "id": "Guid (identifier)",
  "state": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "service resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
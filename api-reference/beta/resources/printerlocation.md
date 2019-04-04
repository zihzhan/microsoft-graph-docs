---
title: "printerLocation resource type"
description: "Represents the the physical and/or organizational location of a printer."
localization_priority: Normal
author: "BraedenP"
ms.prod: "Universal Print"
---

# printerLocation resource type

Represents the the physical and/or organizational location of a printer.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|latitude|double|The latitude that the printer is located at.|
|longitude|double|The longitude that the printer is located at.|
|altitudeInMeters|int32|The altitude, in meters, that the printer is located at.|
|streetAddress|string|The street address (e.g., "One Microsoft Way") that the printer is located at.|
|streetAddress|string|The street address (e.g., "One Microsoft Way") that the printer is located at.|
|subUnit|Collection(string)|The sub unit hierarchy (e.g., ["Main Plaza", "Unit 400"]) that the printer is located at. The elements should be in hierarchical order.
|city|string|The city (e.g., "Redmond") that the printer is located in.
|region|Collection(string)|The region hierarchy (e.g., ["Washington", "King County"]) that the printer is located in. The elements should be in hierarchical order.
|postalCode|string|The postal code (e.g., "98052") that the printer is located in.
|country|string|The country or region (e.g., "USA" or "Americas") that the printer is located in.
|site|string|The site (e.g., "Puget Sound") that the printer is located in.
|building|string`|The building (e.g., "Studio E ") that the printer is located in.
|floorNumber|int32|The floor number (e.g., 1) that the printer is located on.
|floorDescription|string|The description of the floor (e.g., "Main Floor") that the printer is located on.
|roomNumber|int32|The room number (e.g., 123) that the printer is located in.
|roomDescription|int32|The description of the room (e.g., "Chinook") that the printer is located in.
|organization|Collection(string)|The organizational hierarchy (e.g., ["Microsoft", "C+AI"]) that the printer is belongs to. The elements should be in hierarchical order.
## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printerLocation"
}-->

```json
{
    "latitude": 1.1,
    "longitude": 2.2,
    "altitudeInMeters": 3,
    "streetAddress": "One Microsoft Way",
    "subUnit": [
        "Main Plaza",
        "Unit 400"
    ],
    "city": "Redmond",
    "region": [
        "Washington",
        "King County"
    ],
    "postalCode": "98052",
    "country": "USA",
    "site": "Puget Sound",
    "building": "Studio E",
    "floorNumber": 1,
    "floorDescription": "First Floor",
    "roomNumber": 1234,
    "roomDescription": "First floor copy room",
    "organization": [
        "C+AI",
        "Microsoft Graph"
    ]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printerLocation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
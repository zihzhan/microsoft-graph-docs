---
title: "iPv6Range resource type"
description: "IP V6 range definition."
author: "tfitzmac"
---

# iPv6Range resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

IP V6 range

Inherits from [ipRange](../resources/intune-shared-iprange.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|lowerAddress|String|Lower IP address|
|upperAddress|String|Upper IP address|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.iPv6Range"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iPv6Range",
  "lowerAddress": "String",
  "upperAddress": "String"
}
```

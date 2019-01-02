---
title: "loggedOnUser resource type"
description: "Logged On User"
author: "tfitzmac"
---

# loggedOnUser resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Logged On User

## Properties
|Property|Type|Description|
|:---|:---|:---|
|userId|String|User id|
|lastLogOnDateTime|DateTimeOffset|Date time when user logs on|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.loggedOnUser"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.loggedOnUser",
  "userId": "String",
  "lastLogOnDateTime": "String (timestamp)"
}
```




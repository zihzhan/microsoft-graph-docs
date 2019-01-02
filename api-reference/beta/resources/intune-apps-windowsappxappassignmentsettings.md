---
title: "windowsAppXAppAssignmentSettings resource type"
description: "Contains properties used when assigning a Windows AppX mobile app to a group."
author: "tfitzmac"
---

# windowsAppXAppAssignmentSettings resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Contains properties used when assigning a Windows AppX mobile app to a group.


Inherits from [mobileAppAssignmentSettings](../resources/intune-apps-mobileappassignmentsettings.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|useDeviceContext|Boolean|Whether or not to use device execution context for Windows AppX mobile app.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsAppXAppAssignmentSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsAppXAppAssignmentSettings",
  "useDeviceContext": true
}
```




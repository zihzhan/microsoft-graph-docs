---
title: "deviceAndAppManagementAssignedRoleDetails resource type"
description: "Not yet documented"
author: "tfitzmac"
---

# deviceAndAppManagementAssignedRoleDetails resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Not yet documented

## Properties
|Property|Type|Description|
|:---|:---|:---|
|roleDefinitionIds|String collection|Role Definition IDs for the specifc Role Definitions assigned to a user.|
|roleAssignmentIds|String collection|Role Assignment IDs for the specifc Role Assignments assigned to a user.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAndAppManagementAssignedRoleDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementAssignedRoleDetails",
  "roleDefinitionIds": [
    "String"
  ],
  "roleAssignmentIds": [
    "String"
  ]
}
```




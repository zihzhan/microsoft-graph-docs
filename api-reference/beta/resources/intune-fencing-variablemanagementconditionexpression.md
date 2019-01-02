---
title: "variableManagementConditionExpression resource type"
description: "Evaluates the management condition state as a Boolean expression."
author: "tfitzmac"
---

# variableManagementConditionExpression resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Evaluates the management condition state as a Boolean expression.


Inherits from [managementConditionExpressionModel](../resources/intune-fencing-managementconditionexpressionmodel.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|managementConditionId|String|The management condition id that is used to evaluate the expression.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.variableManagementConditionExpression"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.variableManagementConditionExpression",
  "managementConditionId": "String"
}
```




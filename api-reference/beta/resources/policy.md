---
title: "policy resource type"
description: "Represents an Azure AD policy."
localization_priority: Normal
author: davidmu1
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
---

# policy resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure AD policy. Policies are custom rules that can be enforced on applications, service principals, groups, or the entire organization they are assigned to.

The following are the policy types:

- [Token lifetime policy](tokenlifetimepolicy.md)
- [Activity-based timeout policy](activitybasedtimeoutpolicy.md)

## Methods
| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get policy](../api/policy-get.md)|Policy|Read properties and relationships of user object.|
|[Create policy](../api/policy-post.md)|Policy|Create a new policy object.|
|[Update policy](../api/policy-update.md)|None|Update policy object.|
|[Delete policy](../api/policy-delete.md)|None|Delete policy object.|
|[Assign policy](../api/policy-assign.md)|None|Assign a policy to an application or service principal.|
|[List policies](../api/policy-list.md)|Policy collection|Get all policy objects in the organization.|
|[List assigned policies](../api/policy-list-assigned.md)|Policy collection|Get all policy objects assigned to an application or service principal.|

##  Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|definition|String|The policy definition is a JSON string. Each policy definition JSON is different per policy type. Supported definitions: [activitybasedtimeoutpolicy](activitybasedtimeoutpolicy.md) and [tokenlifetimepolicy](tokenlifetimepolicy.md). Required.|
|displayName|String|A custom name for the policy. Required.|
|isOrganizationDefault|Boolean|If set to true, activates this policy. There can be many policies for the same policy type, but only one can be activated as the organization default. Optional, default value is false.|
|type|String|Specifies the type of policy. Supported types: **activityBasedTimeoutPolicy** and **tokenLifetimePolicy**. Required.|

## Relationships
|Relationship|Type|Description|
|:-------------|:-----------|:-----------|
|appliesTo|[directoryObject](../resources/directoryobject.md) collection|The applications, service principals, groups, or organization the policy applies to.|

## JSON representation
The following is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.policy",
  "keyProperty": "id",
  "baseType":"microsoft.graph.directoryObject",  
  "openType": true
}-->
```json
{
  "definition": "String",
  "displayName": "String",
  "isOrganizationDefault": "Boolean",
  "type": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "suppressions": [
    "Error: /api-reference/beta/resources/policy.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->



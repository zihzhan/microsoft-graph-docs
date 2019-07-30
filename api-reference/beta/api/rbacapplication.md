---
title: "rbacApplication resource type"
description: "Role management navigation property"
localization_priority: Normal
author: "davidmu1"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# rbacApplication resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Role management navigation property. Currently only supports "directory", which must be provided.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Create unifiedRoleAssignment](../api/rbacapplication-post-roleassignments.md) | [unifiedRoleAssignment](unifiedroleassignment.md) | <b>Not implemented.</b> Create a new unifiedRoleAssignment by posting to the roleAssignments collection. |
| [List roleAssignments](../api/rbacapplication-list-roleassignments.md) | [unifiedRoleAssignment](unifiedroleassignment.md) collection | <b>Not implemented.</b> Get a unifiedRoleAssignment object collection. |
| [Create unifiedRoleDefinition](../api/rbacapplication-post-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) | Create a new unifiedRoleDefinition by posting to the roleDefinitions collection. |
| [List roleDefinitions](../api/rbacapplication-list-roledefinitions.md) | [unifiedRoleDefinition](unifiedroledefinition.md) collection | Get a unifiedRoleDefinition object collection. |
| [Delete](../api/rbacapplication-delete.md) | None | Delete rbacApplication object. |

## Properties

None

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|roleAssignments|[unifiedRoleAssignment](unifiedroleassignment.md) collection| <b>Not implemented.</b> Read-only. Nullable.|
|roleDefinitions|[unifiedRoleDefinition](unifiedroledefinition.md) collection| Read-only. Nullable.|

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "rbacApplication resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
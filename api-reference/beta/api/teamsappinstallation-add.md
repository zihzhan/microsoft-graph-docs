---
title: "Add app to team"
description: "Installs an app to the specified team."
author: "clearab"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# Add app to team

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Installs an [app](../resources/teamsapp.md) to the specified [team](../resources/team.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Group.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Group.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /teams/{id}/installedApps
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|teamsApp|String|The id of the app to add.|


## Response

If successful, this method returns a `200 OK` response code.
## Example
#### Request
The following is an example of the request.
<!-- {
  "blockType": "ignored",
  "name": "get_team"
}-->
```http
POST https://graph.microsoft.com/beta/teams/{id}/installedApps
{
   "teamsApp@odata.bind":"https://graph.microsoft.com/beta/appCatalogs/teamsApps/12345678-9abc-def0-123456789a"
}
```
#### Response
The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "ignored",
  "truncated": true,
  "@odata.type": "microsoft.graph.team"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 401

{
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get team",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

## See also

- [List installed apps for a user](../api/teamsappinstallation-list-user.md)
- [Install apps for a user](../api/teamsappinstallation-add-user.md)
- [Uninstall app for a user](../api/teamsappinstallation-delete-user.md)
- [Upgrade installed app for a user](../api/teamsappinstallation-upgrade-user.md)
- [Uninstall app for a Team](../api/teamsappinstallation-delete.md)
- [List installed apps for a Team](../api/teamsappinstallation-list.md)
- [Upgrade installed app for a Team](../api/teamsappinstallation-upgrade.md)

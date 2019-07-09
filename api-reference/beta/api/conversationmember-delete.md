---
title: "Delete conversationMember"
description: "Delete a member of a channel."
author: "dafranc"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# Delete conversationMember

[!INCLUDE [private-preview-disclaimer](../../includes/private-preview-disclaimer.md)]

Delete a [conversationMember](../resources/conversationmember.md) from a [channel](../resources/channel.md).

> [!NOTE]
>This operation is only supported on channels with a `channelType` of `private`

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission Type|Permissions (from least to most privileged)|
|---------|-------------|
|Delegated (work or school account)|Group.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|Group.ReadWrite.All|

## HTTP request
<!-- { "blockType": "ignored"} -->
```http
DELETE /teams/{id}/channels/{id}/members/{id}
```

## Optional query parameters

This operation does not support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Example

#### Request

Here is an example of the request.
<!-- {
  "blockType": "request",
  "name": "delete_conversation_member"
} -->
```http
DELETE https://graph.microsoft.com/beta/teams/{id}/channels/{id}/members/{id}
```

#### Response

Here is an example of the response.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```
---
title: "Create policy"
description: "Create a new policy object by specifying display name, policy type, and policy description."
localization_priority: Normal
author: davidmu1
doc_type: apiPageType
ms.prod: "microsoft-identity-platform"
---

# Create policy

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [policy](../resources/policy.md) object by specifying display name, policy type, and policy description.

>**Note:** The policy details are validated before they are stored. If the policy does not pass validation, a `400 Bad Request` is returned.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /policies
```
## Request headers
| Name | Description|
|:---- |:---------- |
| Authorization | Bearer {token}. Required. |
| Content-Type | application/json |

## Request body
In the request body, provide a JSON representation of [policy](../resources/policy.md) object.

The following table shows the properties that are required when you create a policy.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|definition|String|The string version of the [policy](../resources/policy.md) object.|
|displayName|String|A custom name for the policy.|
|type|String|Specifies the type of [policy](../resources/policy.md).|

## Response

If successful, this method returns a `201 Created` response code and a [policy](../resources/policy.md) object in the response body. If unsuccessful, a `4xx` error is returned with specific details.  

## Example
The following example creates a new token lifetime policy. Notice that the string definition parameter has escaped double quotes.

### Request
The following example shows the request.

<!-- {
  "blockType": "request",
  "name": "create_policy"
}-->
```http
POST https://graph.microsoft.com/beta/policies
Content-Type: application/json

{
  "displayName":"CustomTokenLifetimePolicy",
  "definition":"{\"TokenLifetimePolicy\":{\"Version\":1,\"AccessTokenLifetime\":\"8:00:00\"}}",
  "type":"TokenLifetimePolicy"
}
```

### Response
The following example shows the response. 

>**Note:** The response object shown here might be shortened for readability. All the properties are returned from an actual call.

<!-- {
  "blockType": "response",
  "name": "create_policy",
  "truncated": true,
  "@odata.type": "microsoft.graph.policy"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#policies/$entity",
  "id":"id-value",
  "alternativeIdentifier":null,
  "definition":"{\"TokenLifetimePolicy\":{\"Version\":1,\"AccessTokenLifetime\":\"8:00:00\"}}",
  "displayName":"name-value",
  "isOrganizationDefault":false,
  "keyCredentials":[{"@odata.type": "microsoft.graph.keyCredential"}],
  "type":"TokenLifetimePolicy"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "message: createReply",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

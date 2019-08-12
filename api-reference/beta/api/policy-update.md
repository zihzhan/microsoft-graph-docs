---
title: "Update policy"
description: "Update properties in a preexisting policy."
localization_priority: Normal
author: davidmu1
doc_type: apiPageType
ms.prod: "microsoft-identity-platform"
---

# Update policy

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update properties in a [policy](../resources/policy.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request

```http
PATCH /policies/{id}
```
## Request headers
| Name | Description |
|:---- |:----------- |
| Authorization  | Bearer {token}. Required. |
| Content-Type | application/json |

## Request body
In the request body, provide a JSON object with the parameters that need to be updated. The following table shows the possible parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|definition|String|The stringified version of the [policy](../resources/policy.md) object.|
|displayName|String|A custom name for the policy.|
|isOrganizationDefault|Boolean|Specifies if this policy is applied by default.|
|type|String|Specifies the type of [policy](../resources/policy.md).|

## Response

If successful, this method returns a `204 No Content` response code. If unsuccessful, a `4xx` error is returned with specific details.

## Example
The following example updates the definition of the token lifetime policy and sets it as the organization default.

### Request
The following example shows the request.

```http
PATCH https://graph.microsoft.com/beta/policies/{id}
Content-Type: application/json
{
	"definition":["{\"TokenLifetimePolicy\":{\"Version\":1,\"AccessTokenLifetime\":\"8:00:00\",\"MaxInactiveTime\":\"20:00:00\",}}"],
	"isOrganizationDefault":true
}
```

### Response
The following example shows the response. 

```http
HTTP/1.1 204 No Content
```

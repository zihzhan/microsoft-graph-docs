---
title: "objectIdentity resource type"
description: "Represents an identity used to sign in to a user account,"
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "microsoft-identity-platform"
author: "davidmu1"
---

# objectIdentity resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an identity used to sign in to a user account or other security principals, although this is currently only supported for users. An identity can be provided by Microsoft, by organizations, or by social identity providers such as FaceBook, Google, Microsoft Account, that are tied to a user account. This enables the user to sign in with any of those associated identities.

The **identities** property of the [user](user.md) resource is an **objectIdentity** object.

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|`signInType`|`string`| Specifies the user sign-in types in your directory, such as **emailAddress**, **userName** or **federated**. **federated** represents a unique identifier for a user from an issuer, that may be in any format chosen by the issuer. Multiple email address **signInTypes** may be specified too, such as **emailAddress1**, **emailAddress2** etc. Default is **emailAddress**. Filterable.|
|`issuer`|`string`|Specifies the issuer of the identity, for example **facebook.com**. For local accounts this property is the local B2C domain name, for example **contoso.onmicrosoft.com**. For external users from other Azure AD organization, this will be the domain of the federated organization, for example **contoso.com**. Filterable. 512 character limit.|
|`issuerAssignedId`|`string`|Specifies the unique identifier assigned to the user by the issuer. The combination of `issuer` and `issuerAssignedId` must be unique within the organization. For local accounts, this property will represent the sign-in name for the user.  Filterable. 512 character limit.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.objectIdentity"
}-->

```json
{
  "signInType": "string",
  "issuer": "string",
  "issuerAssignedId": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "objectIdentity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

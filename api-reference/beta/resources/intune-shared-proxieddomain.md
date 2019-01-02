---
title: "proxiedDomain resource type"
description: "Defines the proxy address for a domain."
author: "tfitzmac"
---

# proxiedDomain resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Proxied Domain

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ipAddressOrFQDN|String|The IP address or fully qualified domain name (FQDN).|
|proxy|String|Proxy IP address or FQDN.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.proxiedDomain"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.proxiedDomain",
  "ipAddressOrFQDN": "String",
  "proxy": "String"
}
```




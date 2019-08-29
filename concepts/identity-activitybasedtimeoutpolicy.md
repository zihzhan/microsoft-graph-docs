---
title: "Activity-based timeout policy"
description: "Specifies a shared activity-based timeout policy."
localization_priority: Normal
author: davidmu1
ms.prod: "microsoft-identity-platform"
---

# Activity-based timeout policy (preview)

An activity-based timeout policy in Azure AD enables you to configure idle timeout for web sessions for applications that support activity-based timeout functionality. Applications enforce automatic signout after a period of inactivity. This type of policy must be applied at the organization level.

In the Microsoft Graph API, you can represent an activity-based timeout policy as an instance of the [policy](/graph/api/resources/policy?view=graph-rest-beta) entity with the **definition** property specifying the behavior of this type of policy. The **definition** property is a collection of a single stringified JSON object that has all quotes escaped. 

## Example

First, take a look at an example of a **policy** that defines an activity-based timeout policy: 
<!--{
  "blockType": "ignored"
}-->
```json
{
  "alternativeIdentifier": null,
  "definition": ["{
                  \"ActivityBasedTimeoutPolicy\":{
                    \"Version\":1,
                    \"ApplicationPolicies\":[
                      {\"ApplicationId\":\"default\",\"WebSessionIdleTimeout\":\"01:00:00\"},
                      {\"ApplicationId\":\"c44b4083-3bb0-49c1-b47d-974e53cbdf3c\",\"WebSessionIdleTimeout\":\"00:15:00\"}
                    ]
                  }
  }"],
  "displayName": "Timeout policy 1",
  "id": "id-value",
  "isOrganizationDefault": true,
  "keyCredentials": ["key-credentials"],
  "type": "activityBasedTimeoutPolicy"
}
```

<!-- To do: 
Replace the pseudo values for the id and keyCredentials properties by real-looking values.
-->

This example defines version 1 of an activity-based timeout policy that is named "Timeout policy 1", and that specifies the default period that a user web session idles in an application before the session is considered as expired is one hour, and that in the Azure Portal is 15 minutes. This policy is activated as the organization's default activity-based timeout policy.

## Defining fields

The following table describes the fields that specify an activity-based timeout policy in the **definition** property of a **policy**.

| Field	   | Type	|Description|
|:-------------|:------|:---------|
|Version|Integer|Policy version. Set value of 1. Required.|
|ApplicationPolicies|[policy](/graph/api/resources/policy?view=graph-rest-beta) collection|Collection of application policies.|
|ApplicationId|String|Identifies a type of application that the corresponding WebSessionIdleTimeout behavior applies to. Allowed values:<br>- default: Indicates the corresponding behavior is applied to all applications that support activity-based timeout functionality but do not have application-specific overrides.<br>- c44b4083-3bb0-49c1-b47d-974e53cbdf3c: Indicates the corresponding behavior is applied to the Azure Portal|
|WebSessionIdleTimeout|String|The period of user inactivity after which the user's web session is considered expired. The minimum value is 5 minutes; the maximum value is 1 day. <br>Values are expressed in the following format: dd.hh:mm:ss. <br>The maximum values for properties denoted in days are 1 second short of the denoted number of days. For example, the maximum value of 1 day is specified as 23:59:59.|



<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Activity-based timeout policy",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

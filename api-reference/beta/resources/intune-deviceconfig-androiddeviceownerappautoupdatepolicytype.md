---
title: "androidDeviceOwnerAppAutoUpdatePolicyType enum type"
description: "Android Device Owner possible values for states of the device's app auto update policy."
author: "tfitzmac"
---

# androidDeviceOwnerAppAutoUpdatePolicyType enum type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Android Device Owner possible values for states of the device's app auto update policy.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured; this value is ignored.|
|userChoice|1|The user can control auto-updates.|
|never|2|Apps are never auto-updated.|
|wiFiOnly|3|Apps are auto-updated over Wi-Fi only.|
|always|4|Apps are auto-updated at any time. Data charges may apply.|




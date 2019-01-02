---
title: "enablement enum type"
description: "Values used to indicate the enablement property status for a given device."
author: "tfitzmac"
---

# enablement enum type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Values used to indicate the status of a device. 

Note that there is a difference between the `disabled` and `not configured` states.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Device default value, no intent.|
|enabled|1|Enables the setting on the device.|
|disabled|2|Disables the setting on the device.|

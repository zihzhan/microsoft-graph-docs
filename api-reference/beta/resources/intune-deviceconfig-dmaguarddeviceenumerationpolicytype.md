---
title: "dmaGuardDeviceEnumerationPolicyType enum type"
description: "Possible values of the DmaGuardDeviceEnumerationPolicy."
author: "tfitzmac"
---

# dmaGuardDeviceEnumerationPolicyType enum type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** Using the Microsoft Graph APIs to configure Intune controls and policies still requires that the Intune service is [correctly licensed](https://go.microsoft.com/fwlink/?linkid=839381) by the customer.

Possible values of the DmaGuardDeviceEnumerationPolicy.

## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|Default value. Devices with DMA remapping incompatible drivers will only be enumerated after the user unlocks the screen.|
|blockAll|1|Devices with DMA remapping incompatible drivers will never be allowed to start and perform DMA at any time.|
|allowAll|2|All external DMA capable PCIe devices will be enumerated at any time.|




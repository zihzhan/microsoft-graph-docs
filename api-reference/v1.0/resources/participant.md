---
title: "participant resource type"
description: "The participant type."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# participant resource type

The participant type.

## Methods

| Method                                                          | Return Type                              | Description                                       |
|:----------------------------------------------------------------|:-----------------------------------------|:--------------------------------------------------|
| [Get participant](../api/participant-get.md)                    | [participant](participant.md)            | Read properties of the **participant** object.    |
| [Invite](../api/participant-invite.md)                          | [commsOperation](commsoperation.md)      | Invite a participant to the call.                 |
| [Mute participant](../api/participant-mute.md)                  | [muteParticipantOperation](muteParticipantOperation.md)      | Mute a participant in a call.                     |

## Properties

| Property             | Type                                     | Description                                                  |
| :------------------- | :--------------------------------------- | :------------------------------------------------------------|
| id                   | String                                   | The participant id.                                          |
| info                 | [participantInfo](participantinfo.md)    | The participant of the participant.                          |
| isInLobby            | boolean                                  | true if the participant is in lobby                          |
| isMuted              | boolean                                  | true if the participant is muted (client or server muted)    |
| mediaStreams         | [mediaStream](mediastream.md) collection | The list of media streams.                                   |
| metadata             | String                                   | A blob of data provided by the participant in the roster     |
| recordingInfo        | [recordingInfo](recordinginfo.md)        | Information on whether the participant has recording capability. |

## Relationships
None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.participant"
}-->
```json
{
  "id": "String (identifier)",
  "info": {"@odata.type": "#microsoft.graph.participantInfo"},
  "isInLobby": true,
  "isMuted": true,
  "mediaStreams": [ { "@odata.type": "#microsoft.graph.mediaStream" } ],
  "metadata": "String",
  "recordingInfo": { "@odata.type": "#microsoft.graph.recordingInfo" }
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "participant resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
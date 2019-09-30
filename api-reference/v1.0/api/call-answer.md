---
title: "call: answer"
description: "Answer an incoming call."
author: "VinodRavichandran"
---

# call: answer

Answer action enables the bot to answer an incoming [call](../resources/call.md). The incoming call request can be an invite from a meeting or a peer to peer call. For a meeting invite, the notification contains the `chatInfo` and `meetingInfo` parameters.

Once the bot is registered with a valid callback url in the Azure portal, any incoming call is delivered as a resource created notification on that url. The bot is expected to Answer or Reject the call before the call times out (Current timeout value is 15 seconds).

> **Note:** Bot can only be reached by VoIP. PSTN calling isn't supported.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference). You will need to [register the calling bot](../../../concepts/register-calling-bot.md) and go through the list of permissions needed as mentioned below.

You do not need any permissions to answering a P2P call (see note below). For answering an invite from meeting, you need `Calls.JoinGroupCalls.All` or `Calls.JoinGroupCallsasGuest.All` depending on the scenario.

| Permission type | Permissions (from least to most privileged)                 |
| :-------------- | :-----------------------------------------------------------|
| Delegated (work or school account)     | Not Supported                        |
| Delegated (personal Microsoft account) | Not Supported                        |
| Application     | None                                                        |

> **Note:** For a call with app hosted media, you need the `Calls.AccessMedia.All` permission with one of the permissions listed in the previous table.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /communications/calls/{id}/answer
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter        | Type                                     |Description                                                                       |
|:-----------------|:-----------------------------------------|:---------------------------------------------------------------------------------|
|callbackUri       |String                                    |The callback url on which callbacks will be delivered. Must be `https`. Required for answering a call.    |
|acceptedModalities|String collection                         |The list of accept modalities. Possible values are: `unknown`, `audio`, `video`, `screenSharing`, `videoBasedScreenSharing`, `data`. Required for answering a call. |
| mediaConfig         | [appHostedMediaConfig](../resources/apphostedmediaconfig.md) or [serviceHostedMediaConfig](../resources/servicehostedmediaconfig.md) | The media configuration. Required information for answering a call. |

## Response
This method returns `202 Accepted` response code without any body.

## Examples
The following example shows how to call this API.

##### Request
The following example shows the request.

<!-- {
  "blockType": "request",
  "name": "call-answer"
}-->
```http
POST https://graph.microsoft.com/v1.0/communications/calls/84dbfc70-81cb-4a35-9e53-c5b48b82c447/answer
Content-Type: application/json
Authorization: Bearer <Token>

{
  "callbackUri": "https://bot.contoso.com/callback",
  "mediaConfig": {
    "@odata.type": "#microsoft.graph.appHostedMediaConfig",
    "blob": "<media config blob>"
  },
  "acceptedModalities": [
    "audio"
  ]
}
```

`<Media Session Configuration>` is the serialized media session configuration which contains the session information of the media stack. Specific information about audio, video, VBSS ssession information should be passed here.

Sample audio media session blob is shown below
```json
{\"mpUri\":\"net.tcp://bot.contoso.com:18732/MediaProcessor\",\"audioRenderContexts\":[\"14778cc4-f54c-43c7-989f-9092e34ef784\"],\"videoRenderContexts\":[],\"audioSourceContexts\":[\"a5dcfc9b-5a54-48ef-86f5-1fdd8508741a\"],\"videoSourceContexts\":[],\"dataRenderContexts\":null,\"dataSourceContexts\":null,\"supportedAudioFormat\":\"Pcm16K\",\"videoSinkEncodingFormats\":[],\"mpMediaSessionId\":\"2379cf46-acf3-4fef-a914-be9627075320\",\"regionAffinity\":null,\"skypeMediaBotsVersion\":\"1.11.1.0086\",\"mediaStackVersion\":\"2018.53.1.1\",\"mpVersion\":\"7.2.0.3881\",\"callId\":\"1b69b141-7f1a-4033-9c34-202737190a20\"}
```


##### Response
Here is an example of the response. 

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.None"
} -->
```http
HTTP/1.1 202 Accepted
```

### Answer P2P VoIP call with service hosted media

> **Note:** This example doesn't need any permission.

##### Notification - incoming

```http
POST https://bot.contoso.com/api/calls
Authorization: Bearer <TOKEN>
Content-Type: application/json
```

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsNotifications"
}-->
```json
{
  "@odata.type": "microsoft.graph.commsNotifications",
  "value": [
    {
      "@odata.type": "microsoft.graph.commsNotification",
      "changeType": "created",
      "resourceUrl": "/communications/calls/84dbfc70-81cb-4a35-9e53-c5b48b82c447",
      "resourceData": {
        "@odata.type": "#microsoft.graph.call",
        "@odata.id": "/communications/calls/84dbfc70-81cb-4a35-9e53-c5b48b82c447",
        "state": "incoming",
        "direction": "incoming",
        "source": {
          "identity": {
            "user": {
              "displayName": "John",
              "id": "112f7296-5fa4-42ca-bae8-6a692b15d4b8 "
            }
          },
          "region": "westus",
          "languageId": "en-US"
        },
        "targets": [
          {
            "identity": {
              "application": {
                "displayName": "Calling Bot",
                "id": "2891555a-92ff-42e6-80fa-6e1300c6b5c6"
              }
            },
            "languageId": "en-US"
          }
        ],
        "requestedModalities": [ "audio" ]
      }
    }
  ]
}
```

##### Answer Request

```http
POST /communications/calls/84dbfc70-81cb-4a35-9e53-c5b48b82c447/answer
Authorization: Bearer <TOKEN>
Content-Type: application/json
```

<!-- {
  "blockType": "ignored",
  "name": "call-answer"
}-->
```json
{
  "callbackUri": "https://bot.contoso.com/api/calls",
  "acceptedModalities": [ "audio" ],
  "mediaConfig": {
    "@odata.type": "#microsoft.graph.serviceHostedMediaConfig",
    "preFetchMedia": [
     {
       "uri": "https://cdn.contoso.com/beep.wav",
       "resourceId": "f8971b04-b53e-418c-9222-c82ce681a582"
     },
     {
       "uri": "https://cdn.contoso.com/cool.wav",
       "resourceId": "86dc814b-c172-4428-9112-60f8ecae1edb"
     }
    ]
  }
}
```

##### Response for Answer Request

```http
HTTP/1.1 202 Accepted
```

##### Notification - establishing

```http
POST https://bot.contoso.com/api/calls
Authorization: Bearer <TOKEN>
Content-Type: application/json
```

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsNotifications"
}-->
```json
{
  "@odata.type": "microsoft.graph.commsNotifications",
  "value": [
    {
      "@odata.type": "microsoft.graph.commsNotification",
      "changeType": "updated",
      "resourceUrl": "/communications/calls/84dbfc70-81cb-4a35-9e53-c5b48b82c447",
      "resourceData": {
        "@odata.type": "#microsoft.graph.call",
        "@odata.id": "/communications/calls/84dbfc70-81cb-4a35-9e53-c5b48b82c447",
        "state": "establishing"
      }
    }
  ]
}
```

##### Notification - established

```http
POST https://bot.contoso.com/api/calls
Authorization: Bearer <TOKEN>
Content-Type: application/json
```

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsNotifications"
}-->
```json
{
  "@odata.type": "microsoft.graph.commsNotifications",
  "value": [
    {
      "@odata.type": "microsoft.graph.commsNotification",
      "changeType": "updated",
      "resourceUrl": "/communications/calls/84dbfc70-81cb-4a35-9e53-c5b48b82c447",
      "resourceData": {
        "@odata.type": "#microsoft.graph.call",
        "@odata.id": "/communications/calls/84dbfc70-81cb-4a35-9e53-c5b48b82c447",
        "state": "established"
      }
    }
  ]
}
```

### Answer P2P VoIP call with application hosted media

> **Note:** This example needs the `Calls.AccessMedia.All` permission.

##### Notification - incoming

```http
POST https://bot.contoso.com/api/calls
Authorization: Bearer <TOKEN>
Content-Type: application/json
```

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsNotifications"
}-->
```json
{
  "@odata.type": "microsoft.graph.commsNotifications",
  "value": [
    {
      "@odata.type": "microsoft.graph.commsNotification",
      "changeType": "created",
      "resourceUrl": "/communications/calls/84dbfc70-81cb-4a35-9e53-c5b48b82c447",
      "resourceData": {
        "@odata.type": "#microsoft.graph.call",
        "@odata.id": "/communications/calls/84dbfc70-81cb-4a35-9e53-c5b48b82c447",
        "state": "incoming",
        "direction": "incoming",
        "source": {
          "@odata.type": "#microsoft.graph.participantInfo",
          "identity": {
            "user": {
              "displayName": "John",
              "id": "112f7296-5fa4-42ca-bae8-6a692b15d4b8"
            }
          },
          "region": "westus",
          "languageId": "en-US"
        },
        "targets": [
          {
            "@odata.type": "#microsoft.graph.participantInfo",
            "identity": {
              "application": {
                "displayName": "Calling Bot",
                "id": "2891555a-92ff-42e6-80fa-6e1300c6b5c6"
              }
            },
            "region": "westus",
            "languageId": "en-US"
          }
        ],
        "requestedModalities": [ "audio" ]
      }
    }
  ]
}
```

##### Request

```http
POST /communications/calls/84dbfc70-81cb-4a35-9e53-c5b48b82c447/answer
Authorization: Bearer <TOKEN>
Content-Type: application/json
```

<!-- {
  "blockType": "ignored",
  "name": "call-answer"
}-->
```json
{
  "callbackUri": "https://bot.contoso.com/api/calls",
  "acceptedModalities": [ "audio" ],
  "mediaConfig": {
    "@odata.type": "#microsoft.graph.appHostedMediaConfig",
    "blob": "<media config blob>"
  }
}
```

##### Response

```http
HTTP/1.1 202 Accepted
```

##### Notification - establishing

```http
POST https://bot.contoso.com/api/calls
Authorization: Bearer <TOKEN>
Content-Type: application/json
```

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsNotifications"
}-->
```json
{
  "@odata.type": "microsoft.graph.commsNotifications",
  "value": [
    {
      "@odata.type": "microsoft.graph.commsNotification",
      "changeType": "updated",
      "resourceUrl": "/communications/calls/84dbfc70-81cb-4a35-9e53-c5b48b82c447",
      "resourceData": {
        "@odata.type": "#microsoft.graph.call",
        "@odata.id": "/communications/calls/84dbfc70-81cb-4a35-9e53-c5b48b82c447",
        "state": "establishing"
      }
    }
  ]
}
```

##### Notification - established

```http
POST https://bot.contoso.com/api/calls
Authorization: Bearer <TOKEN>
Content-Type: application/json
```

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsNotifications"
}-->
```json
{
  "@odata.type": "microsoft.graph.commsNotifications",
  "value": [
    {
      "@odata.type": "microsoft.graph.commsNotification",
      "changeType": "updated",
      "resourceUrl": "/communications/calls/84dbfc70-81cb-4a35-9e53-c5b48b82c447",
      "resourceData": {
        "@odata.type": "#microsoft.graph.call",
        "@odata.id": "/communications/calls/84dbfc70-81cb-4a35-9e53-c5b48b82c447",
        "state": "established"
      }
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "call: answer",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

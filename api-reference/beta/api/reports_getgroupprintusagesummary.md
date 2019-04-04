# reports: getGroupPrintUsageSummary

Gets print usage statistics for a particular group.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

In addition to the below permissions, the user's tenant must have an active Universal Print subscription.

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account) or Application | Reports.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /print/reports/getGroupPrintUsageSummary
GET /reports/getGroupPrintUsageSummary
```
## Request headers
| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {code} |

## Function Parameters

|Parameter|Type|Required?|Description|
|-|-|-|-|-|
|`groupId`|`Edm.String`|Yes|The ID of the group to return data for.|
|`periodStart`|`Edm.DateTimeOffset`|Yes|The start date (inclusive) for the time period to include data from.|
|`periodEnd`|`Edm.DateTimeOffset`|Yes|The end date (inclusive) for the time period to include data from.|

## Response
If successful, this method returns `200, OK` response code and a [groupPrintUsageSummary](../resources/groupprintusagesummary.md) object in the response body.

## Example
The following is an example of how to call this API.
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "reports_getgroupprintusagesummary"
}-->
```http
GET https://graph.microsoft.com/v1.0/print/reports/getGroupPrintUsageSummary(groupId='<id>',periodStart=<timestamp>,periodEnd=<timestamp>)
```

##### Response
The following is an example of the response. 
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.None"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 149

{
    "group": {"@odata.type": "microsoft.graph.identity"},
    "groupMail": "String",
    "completedJobCount": 1,
    "incompleteJobCount": 1
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printJob: getGroupPrintUsageSummary",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
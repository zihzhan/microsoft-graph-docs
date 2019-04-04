# reports: getOverallPrintUsageSummary

Gets print usage statistics for the entire tenant.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

In addition to the below permissions, the user's tenant must have an active Universal Print subscription.

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account) or Application | Reports.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /print/reports/getOverallPrintUsageSummary()
GET /reports/getOverallPrintUsageSummary()
```
## Request headers
| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {code} |

## Function Parameters

|Parameter|Type|Required?|Description|
|-|-|-|-|-|
|`periodStart`|`Edm.DateTimeOffset`|Yes|The start date (inclusive) for the time period to include data from.|
|`periodEnd`|`Edm.DateTimeOffset`|Yes|The end date (inclusive) for the time period to include data from.|
|`topListsSize`|`Edm.Int`|Yes|The number of entities to include the "top user" and "top printers" lists. Maximum 10.|

## Response
If successful, this method returns `200, OK` response code and an [overallPrintUsageSummary](../resources/overallprintusagesummary.md) object in the response body.

## Example
The following is an example of how to call this API.
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "reports_getoverallprintusagesummary"
}-->
```http
GET https://graph.microsoft.com/v1.0/print/reports/getOverallPrintUsageSummary(topListsSize=10,periodStart=<timestamp>,periodEnd=<timestamp>)
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
Content-length: 334

{
    "topUsers": [
        {"@odata.type": "microsoft.graph.userPrintUsageSummary"}
    ],
    "topPrinters": [
        {"@odata.type": "microsoft.graph.printerUsageSummary"}
    ],
    "daysInPeriod": 1,
    "activeUsersCount": 1,
    "activePrintersCount": 1,
    "totalJobsProcessed": 1,
    "totalIncompleteJobs": 1
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printJob: getOverallPrintUsageSummary",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
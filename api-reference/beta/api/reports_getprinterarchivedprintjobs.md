# reports: getPrinterArchivedPrintJobs

Gets a list of archived print jobs that were queued for particular printer.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

In addition to the below permissions, the user's tenant must have an active Universal Print subscription.

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account) or Application | Reports.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /print/reports/getPrinterArchivedPrintJobs
GET /reports/getPrinterArchivedPrintJobs
```
## Request headers
| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {code} |

## Function parameters

|Parameter|Type|Required?|Description|
|-|-|-|-|-|
|`printerId`|`Edm.String`|Yes|The ID of the printer to return data for.|
|`periodStart`|`Edm.DateTimeOffset`|No|The start date (inclusive) for the time period to include data from.|
|`periodEnd`|`Edm.DateTimeOffset`|No|The end date (inclusive) for the time period to include data from.|

## Response
If successful, this method returns `200, OK` response code and collection of [archivedPrintJob](../resources/archivedPrintJob.md) objects in the response body.

## Example
The following is an example of how to call this API.
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "reports_getPrinterArchivedPrintJobs"
}-->
```http
GET https://graph.microsoft.com/v1.0/print/reports/getPrinterArchivedPrintJobs(printerId='<id>',periodStart=<timestamp>,periodEnd=<timestamp>)
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
Content-length: 325

{
    "value": [
        {
            "id": "String (identifier)",
            "printer": {"@odata.type": "microsoft.graph.directoryObject"},
            "createdBy": {"@odata.type": "microsoft.graph.userIdentity"},
            "processingState": {"@odata.type": "microsoft.graph.directoryObject"}
        }
    ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printJob: getPrinterArchivedPrintJobs",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
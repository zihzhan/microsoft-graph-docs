# List jobs

Retrieve a list of print jobs.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

In addition to the below permissions, the user's tenant must have an active Universal Print subscription.

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account) or Application | PrintJob.Read.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /print/printers/<id>/jobs
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData Query Parameters](/graph/query-parameters).

* The `$top`, `$count` and `$filter` operators are not yet supported, but will be supported soon.

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {code} |

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and collection of [printJob](../resources/printjob.md) objects in the response body.
## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_jobs"
}-->
```http
GET https://graph.microsoft.com/v1.0/print/printers/<id>/jobs
```
##### Response
The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printJob",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 125

{
  "value": [
    {
      "id": "String (identifier)",
      "createdDateTime": "String (timestamp)",
      "status": {"@odata.type": "microsoft.graph.printJobStatus"},
      "printer": {"@odata.type": "microsoft.graph.printer"},
      "createdBy": {"@odata.type": "microsoft.graph.userIdentity"}
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List jobs",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
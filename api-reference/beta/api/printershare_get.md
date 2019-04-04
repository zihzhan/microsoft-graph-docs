# Get printerShare

Retrieve the properties and relationships of a printer share.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

In addition to the below permissions, the user's tenant must have an active Universal Print subscription.

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)| Printer.Read.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /print/printerShares/<id>
GET /print/printers/<id>/share
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData Query Parameters](/graph/query-parameters).

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {code} |

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and [printerShare](../resources/printershare.md) object in the response body.
## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_printershare"
}-->
```http
GET https://graph.microsoft.com/v1.0/print/printerShares/<id>
```
##### Response
The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printerShare"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 98

{
  "id": "Guid (identifier)",
  "name": "String",
  "createdDateTime": "String (timestamp)"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get printerShare",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
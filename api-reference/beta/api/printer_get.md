# Get printer

Retrieve the properties and relationships of a printer object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

In addition to the below permissions, the user's tenant must have an active Universal Print subscription.

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)| Printer.Read.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /print/printers/<id>
GET /print/printerShares/<id>/printer
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
If successful, this method returns a `200 OK` response code and [printer](../resources/printer.md) object in the response body.
## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_printer"
}-->
```http
GET https://graph.microsoft.com/v1.0/print/printers/<id>
```
##### Response
The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printer"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 380

{
  "id": "String (identifier)",
  "name": "String",
  "manufacturer": "String",
  "model": "String",
  "isShared": true,
  "registeredDateTime": "String (timestamp)",
  "capabilities": {"@odata.type": "microsoft.graph.printerCapabilities"},
  "location": {"@odata.type": "microsoft.graph.printerLocation"},
  "status": {"@odata.type": "microsoft.graph.printerStatus"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get printer",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
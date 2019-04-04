# List printers

Retrieve a list of printers.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account) or Application | Printer.Read.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /print/printers
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData Query Parameters](/graph/query-parameters).

#### Notable Exceptions
* The `$expand` and `select` operators are supported for the `share` navigation property, but not for `jobs`.
* The `$top`, `$count` and `$filter` operators are not yet supported, but will be supported soon.

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {code} |

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and collection of [printer](../resources/printer.md) objects in the response body.
## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_printers"
}-->
```http
GET https://graph.microsoft.com/v1.0/print/printers
```
##### Response
The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printer",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 230

{
  "value": [
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
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List printers",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
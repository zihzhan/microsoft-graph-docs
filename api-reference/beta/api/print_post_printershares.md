# Create printerShare

Use this API to create a new printer share.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

In addition to the below permissions, the user's tenant must have an active Universal Print subscription.

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)| Printer.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /print/printerShares
```
## Request headers
| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {code} |

## Request body
In the request body, supply a JSON representation of [printerShare](../resources/printershare.md) object.

The printer share's id and createdDateTime properties are set automatically upon resource creation, but the share name and associated printer must be included in the request.

The printer reference is set by using `@odata.bind` syntax as shown in the example below.

## Response
If successful, this method returns `201, Created` response code and [printerShare](../resources/printershare.md) object in the response body.

## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_printershare_from_print"
}-->
```http
POST https://graph.microsoft.com/v1.0/print/printerShares
Content-type: application/json
Content-length: 114

{
  "name": "name-value",
  "printer@odata.bind": "https://graph.microsoft.com/v1.0/print/printers/<id>"
}
```
In the request body, supply a JSON representation of [printerShare](../resources/printershare.md) object.

##### Response
The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printerShare"
} -->
```http
HTTP/1.1 201 Created
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
  "description": "Create printerShare",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
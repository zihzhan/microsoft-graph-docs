# Get printService

Retrieve the properties and relationships of print service.

## Permissions

The user's tenant must have an active Universal Print subscription.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /print/services/<id>
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
If successful, this method returns a `200 OK` response code and [printService](../resources/printservice.md) object in the response body.
## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_printservice"
}-->
```http
GET https://graph.microsoft.com/v1.0/print/services/<id>
```
##### Response
The following is an example of the response. Note: The response object shown here may be truncated for brevity. All of the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printService"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 22

{
  "id": "Guid (identifier)",
  "endpoints": [
    {
      "displayName": "String",
      "name": "String (identifier)",
      "uri": "String"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get printService",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
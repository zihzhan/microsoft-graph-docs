# Update printershare

Update the properties of printer share.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](../../../concepts/permissions_reference.md).

In addition to the below permissions, the user's tenant must have an active Universal Print subscription.

|Permission type                        | Permissions (from least to most privileged)              |
|:--------------------------------------|:---------------------------------------------------------|
|Delegated (work or school account)| Printer.ReadWrite.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /print/printerShares/<id>
```
## Optional request headers
| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {code} |

## Request body
In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|name|String||
|printer|String|Use the `printer@odata.bind` syntax as in the example below to update which printer this printer share is associated with.|

## Response
If successful, this method returns a `200 OK` response code and updated [printerShare](../resources/printershare.md) object in the response body.
## Example
##### Request
The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_printershare"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/print/printerShares/<id>
Content-type: application/json
Content-length: 109

{
  "name": "name-value",
  "printer@odata.bind": "https://graph.microsoft.com/v1.0/print/printers/<id>"
}
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
Content-length: 89

{
  "id": "id-value",
  "name": "name-value",
  "createdDateTime": "datetime-value"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update printershare",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
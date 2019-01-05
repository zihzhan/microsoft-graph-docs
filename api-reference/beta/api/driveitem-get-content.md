---
author: rgregg
ms.author: rgregg
ms.date: 09/10/2017
title: Download a file
---
# Download the contents of a driveItem

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Download the contents of the primary stream (file) of a [driveItem](../resources/driveitem.md). Only drive items with the **file** property can be downloaded.

A successful download involves a GET operation on the drive item `/content` that returns `HTTP 302 Found` and a pre-authenticated download URL. Many HTTP client libraries automatically follow the 302-redirection and start downloading the file immedately. If your client is not enabled to automatically follow the redirect, do a subsequent GET operation to download the actual contents of the file.

Pre-authenticated download URLs are only valid temporarily for a short period of time (a few minutes) and do not require an `Authorization` header to download.

To download a partial range of bytes from the file, you can apply a `Range` header as specified in [RFC 2616](https://www.ietf.org/rfc/rfc2616.txt). Make sure to apply the header to the actual pre-authenticated download URL and not to the request for `/content`. See an [example](#request-3) below. If the range cannot be generated, the `Range` header may be ignored and the full contents of the file would be returned.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All    |
|Delegated (personal Microsoft account) | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All    |
|Application | Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /drives/{drive-id}/items/{item-id}/content
GET /groups/{group-id}/drive/items/{item-id}/content
GET /me/drive/root:/{item-path}:/content
GET /me/drive/items/{item-id}/content
GET /sites/{siteId}/drive/items/{item-id}/content
GET /users/{userId}/drive/items/{item-id}/content
```

## Optional request headers

| Name          | Value  | Description                                                                                                                                              |
|:--------------|:-------|:---------------------------------------------------------------------------------------------------------------------------------------------------------|
| if-none-match | String | If this request header is included and the eTag (or cTag) provided matches the current tag on the file, an `HTTP 304 Not Modified` response is returned. |

## Response

If successful, the GET operation on `/content` returns `302 Found`. The response includes a `Location` header with a pre-authenticated download URL. It is the same URL available through the `@microsoft.graph.downloadUrl` property on **driveItem**. Most clients are enabled to automatically follow the 302-redirect and download the contents of the file.

If your client is not enabled to follow the 302-redirect URL by default:

- You can do an explicit GET operation on the download URL. A successful operation returns an `HTTP 200` response with the full contents of the file.
- Alternatively, you can apply a `Range` request header to get only a partial range of bytes from the file. A successful operation returns an `HTTP 206 Partial Content` response with the requested range of bytes from the file. If the range cannot be generated, the operation returns an `HTTP 200` response with the full contents of the file.

### Errors

See [Error Responses][error-response] for more info about how errors are returned.

## Example
This section describes three example scenarios. Each scenario involves one or two requests:

- The first scenario is the more common case where the client is set to automatically follow 302-redirects. An app makes [request 1](#request-1) and the operation succeeds. The client automatically makes a new separate request for the pre-authenticated download URL specified by the `Location` header, and starts downloading the complete file.
- In the second scenario, the client is not enabled to automatically follow 302-redirects. An app makes [request 1](#request-1), the operation succeeds, and then makes [request 2](#request-2) to download the complete file.
- In the third scenario, an app can disable automatic redirects on the client, and download only part of the file. It makes [request 1](#request-1), the operation succeeds, and then makes [request 3](#request-3) to download a specific partial byte range of the file.

##### Request 1 
This example request on `/content` gets a pre-authenticated download URL for a file:

<!-- { "blockType": "request", "name": "download-item-content", "scopes": "files.read" } -->

```http
GET /me/drive/items/{item-id}/content
```

##### Response 1
Here is an example of a successful response. The operation returns a `HTTP 302 Found` status code, and a `Location` header that indicates a temporary, pre-authenticated download URL for the file.

<!-- { "blockType": "response", "name": "download-item-content", "@odata.type": "stream" } -->

```http
HTTP/1.1 302 Found
Location: https://b0mpua-by3301.files.1drv.com/y23vmagahszhxzlcvhasdhasghasodfi
```

##### Request 2
Using the pre-authenticated download URL returned in response 1, do an explicit GET operation to download the full contents of the file:

<!-- { "blockType": "request", "name": "download-item-full", "scopes": "files.read" } -->
```http
GET https://b0mpua-by3301.files.1drv.com/y23vmagahszhxzlcvhasdhasghasodfi
```

##### Response 2
The following is an example response that returns all the bytes of the file.
<!-- { "blockType": "response", "name": "download-item-full", "@odata.type": "stream" } -->

```http
HTTP/1.1 200 OK

<All the bytes of the file>
```

##### Request 3

Instead of getting the full contents of the file, alternatively, use the same pre-authenticated download URL returned in response 1 and apply a `Range` header to download a partial range of bytes from the file: 

<!-- { "blockType": "request", "name": "download-item-partial", "scopes": "files.read" } -->

```http
GET https://b0mpua-by3301.files.1drv.com/y23vmagahszhxzlcvhasdhasghasodfi
Range: bytes=0-1023
```

##### Response 3
The following is an example response that returns the requested bytes from the file.

<!-- { "blockType": "response", "name": "download-item-partial", "@odata.type": "stream" } -->

```http
HTTP/1.1 206 Partial Content
Content-Range: bytes 0-1023/2048

<first 1024 bytes of file>
```

[error-response]: /graph/errors

<!-- {
  "type": "#page.annotation",
  "description": "Download the contents of a driveItem.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "Items/Download"
} -->

# GET /image/screencapture

Download a screencapture in BMP format for the running title.

## Headers

| Name          | Value                | Description                                                                                                                              |
| ------------- | -------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Accept        | image/bmp, text/html | Client should expect the response body content to be either a BMP image or in HTML format.                                               |
| Authorization | Bearer {JWT}         | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Query Parameters

| Parameter | Required/Optional | Data Type          | Description                                                                                                                                                                                                                                                      |
| --------- | ----------------- | ------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| uuid      | Required          | URL encoded string | Value of `filename` of a [ScreencaptureMeta](#schema_screencapture_meta.md) returned by a successful [GET /screencapture/meta](./get_screencapture_meta.md) request or by a successful [GET /screencapture/meta/list](./get_screencapture_meta_list.md) request. |

## Example Request

Download a screencapture with the filename `0000000019800101000000000`.

```
curl \
    --request GET \
    --header "Accept: image/bmp, text/html" \
    --header "Authorization: Bearer ${JWT}" \
    --output screencapture.bmp \
    "http://${XBOX_IP}:9999/image/screencapture?uuid=0000000019800101000000000"
```

## Responses

### Code `200`

Description: Operation was successful.

Media type: `image/bmp`

### Code `401`

Description: Unauthorized

Response Type: [UnauthorizedResponse](./schema_unauthorized_response.md)

## Code `404`

Description: Not Found

Response Type: [NotFoundResponse](./schema_not_found_response.md)

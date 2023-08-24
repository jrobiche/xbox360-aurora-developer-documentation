# GET /screencapture/meta/list/count

Get the number of screen captures available for the running title.

## Headers

| Name          | Value                       | Description                                                                                                                              |
| ------------- | --------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Accept        | application/json, text/html | Client should expect the response body content to be in either JSON or HTML format.                                                      |
| Authorization | Bearer {JWT}                | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Example Request

```
curl \
    --request GET \
    --header "Accept: application/json, text/html" \
    --header "Authorization: Bearer ${JWT}" \
    "http://${XBOX_IP}:9999/screencapture/meta/list/count"
```

## Responses

### Code `200`

Description: Operation was successful.

Media type: `application/json`

Content Type: `ScreencaptureMetaListCount` (See [ScreencaptureMetaListCount Schema](./schema_screencapture_meta_list_count.md))

## Code `401`

Description: Unauthorized

Response Type: [UnauthorizedResponse](./schema_unauthorized_response.md)

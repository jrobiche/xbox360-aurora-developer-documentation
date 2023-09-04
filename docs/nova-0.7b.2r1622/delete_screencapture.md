# DELETE /screencapture

Delete a screen capture.

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Accept        | text/html    | Client should expect the response body content to be in HTML format.                                                                     |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Query Parameters

| Parameter | Required/Optional | Data Type          | Description                                                                                                                                                                                                                                                   |
| --------- | ----------------- | ------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| uuid      | Required          | URL encoded string | Value of `filename` of a [ScreencaptureMeta](./schema_screencapture_meta.md) returned by a successful [GET /screencapture/meta](./get_screencapture_meta.md) request or a successful [GET /screencapture/meta/list](./get_screencapture_meta_list.md) request |

## Example Request

Delete screen capture with a `filename` of `0000000019800101000000000`.

```
curl \
    --request DELETE \
    --header "Accept: text/html" \
    --header "Authorization: Bearer ${JWT}" \
    "http://${XBOX_IP}:9999/screencapture?uuid=0000000019800101000000000"
```

## Responses

### Code `204`

Description: Screencapture was deleted

## Code `400`

Description: Invalid filename supplied

## Code `401`

Description: Unauthorized

Response Type: [UnauthorizedResponse](./schema_unauthorized_response.md)

## Code `404`

Description: Not Found

Response Type: [NotFoundResponse](./schema_not_found_response.md)

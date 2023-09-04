# GET /image/achievement

Download achievement tile image in PNG format for running title.

## Headers

| Name          | Value                | Description                                                                                                                              |
| ------------- | -------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Accept        | image/png, text/html | Client should expect the response body content to be either a PNG image or in HTML format.                                               |
| Authorization | Bearer {JWT}         | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Query Parameters

| Parameter | Required/Optional | Data Type          | Description                                                                                                                               |
| --------- | ----------------- | ------------------ | ----------------------------------------------------------------------------------------------------------------------------------------- |
| uuid      | Required          | URL encoded string | Value of `imageid` of an [Achievement](#schema_achievement.md) returned by a successful [GET /achievement](./get_achievement.md) request. |

## Example Request

Download achievement tile image for achievement with `imageid` of `100` and save it to `achievement.png`.

```
curl \
    --request GET \
    --header "Accept: image/png, text/html" \
    --header "Authorization: Bearer ${JWT}" \
    --output achievement.png \
    "http://${XBOX_IP}:9999/image/achievement?uuid=100"
```

## Responses

### Code `200`

Description: Operation was successful.

Media type: `image/png`

### Code `401`

Description: Unauthorized

Response Type: [UnauthorizedResponse](./schema_unauthorized_response.md)

## Code `404`

Description: Not Found

Response Type: [NotFoundResponse](./schema_not_found_response.md)

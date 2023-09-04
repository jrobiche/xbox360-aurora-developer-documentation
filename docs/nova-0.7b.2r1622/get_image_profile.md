# GET /image/profile

Download gamer picture in BMP format of a signed in player.

## Headers

| Name          | Value                | Description                                                                                                                              |
| ------------- | -------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Accept        | image/bmp, text/html | Client should expect the response body content to be either a BMP image or in HTML format.                                               |
| Authorization | Bearer {JWT}         | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Query Parameters

| Parameter | Required/Optional | Data Type          | Description                                                                                                                       |
| --------- | ----------------- | ------------------ | --------------------------------------------------------------------------------------------------------------------------------- |
| uuid      | Required          | URL encoded string | Value of `index` of a [ProfileEntry](#schema_profile_entry.md) returned by a successful [GET /profile](./get_profile.md) request. |

## Example Request

Download gamer picture for profile with `index` of `0` and save it to `profile.bmp`.

```
curl \
    --request GET \
    --header "Accept: image/bmp, text/html" \
    --header "Authorization: Bearer ${JWT}" \
    --output profile.bmp \
    "http://${XBOX_IP}:9999/image/profile?uuid=0"
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

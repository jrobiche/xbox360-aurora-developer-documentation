# GET /title/live/cache

Get xbox live catalog information for the running title.

## Headers

| Name          | Value                                | Description                                                                                                                              |
| ------------- | ------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Accept        | text/plain; charset=utf-8, text/html | Client should expect the response body content to be in either UTF-8 plain text or HTML format.                                          |
| Authorization | Bearer {JWT}                         | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Example Request

```
curl \
    --request GET \
    --header "Accept: text/plain; charset=utf-8, text/html" \
    --header "Authorization: Bearer ${JWT}" \
    "http://${XBOX_IP}:9999/title/live/cache"
```

## Responses

### Code `200`

Description: Operation was successful.

Media type: `text/plain; charset=utf-8`

## Code `401`

Description: Unauthorized

Response Type: [UnauthorizedResponse](./schema_unauthorized_response.md)

## Code `404`

Description: Not Found

Response Type: [NotFoundResponse](./schema_not_found_response.md)

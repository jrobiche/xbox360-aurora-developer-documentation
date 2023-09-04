# GET /thread

Get information about threads.

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
    "http://${XBOX_IP}:9999/thread"
```

## Responses

### Code `200`

Description: Operation was successful.

Media type: `application/json`

Content Type: `Thread[]` (See [Thread Schema](./schema_thread.md))

## Code `401`

Description: Unauthorized

Response Type: [UnauthorizedResponse](./schema_unauthorized_response.md)

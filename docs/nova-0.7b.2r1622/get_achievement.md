# GET /achievement

Get information about achievements for the running title.

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
    "http://${XBOX_IP}:9999/achievement"
```

## Responses

### Code `200`

Description: Operation was successful.

Media type: `application/json`

Content Type: `Achievement[]` (A list of [Achievement](./schema_achievement.md)'s)

### Code `204`

Description: Running title does not have any achievements.

### Code `401`

Description: Unauthorized

Response Type: [UnauthorizedResponse](./schema_unauthorized_response.md)

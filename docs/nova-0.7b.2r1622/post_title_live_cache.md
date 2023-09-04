# POST /title/live/cache

Set xbox live catalog information for the running title.

## Headers

| Name          | Value               | Description                                                                                                                              |
| ------------- | ------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Accept        | text/html           | Client should expect the response body content to be in HTML format.                                                                     |
| Authorization | Bearer {JWT}        | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |
| Content-Type  | multipart/form-data | POST data will be passed as a multipart form.                                                                                            |

## Form Data

| Field    | Required/Optional | Data Type | Description |
| -------- | ----------------- | --------- | ----------- |
| liveinfo | Required          | string    |             |

## Example Request

Set running title's live cache to `{"fulltitle": "Example Full Title", "description": "Example Description"}`

```
curl \
    --request POST \
    --header "Accept: application/json, text/html" \
    --header "Authorization: Bearer ${JWT}" \
    --header "Content-Type: multipart/form-data" \
    --form 'liveinfo={"fulltitle": "Example Full Title", "description": "Example Description"}' \
    "http://${XBOX_IP}:9999/title/live/cache"
```

## Success Response

**Code** `201 Created`

## Responses

### Code `202`

Description: Created live cache for title

## Code `401`

Description: Unauthorized

Response Type: [UnauthorizedResponse](./schema_unauthorized_response.md)

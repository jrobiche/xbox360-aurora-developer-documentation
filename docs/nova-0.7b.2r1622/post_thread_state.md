# POST /thread/state

Set state of main thread.

## Headers

| Name          | Value                       | Description                                                                                                                              |
| ------------- | --------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Accept        | application/json, text/html | Client should expect the response body content to be in either JSON or HTML format.                                                      |
| Authorization | Bearer {JWT}                | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |
| Content-Type  | multipart/form-data         | POST data will be passed as a multipart form.                                                                                            |

## Form Data

| Field   | Required/Optional | Data Type | Description                            |
| ------- | ----------------- | --------- | -------------------------------------- |
| suspend | Required          | string    | 0: Resume thread<br/>1: Suspend thread |

## Example Requests

Suspend thread

```
curl \
    --request POST \
    --header "Accept: application/json, text/html" \
    --header "Authorization: Bearer ${JWT}" \
    --header "Content-Type: multipart/form-data" \
    --form "suspend=1" \
    "http://${XBOX_IP}:9999/thread/state"
```

Resume thread

```
curl \
    --request POST \
    --header "Accept: application/json, text/html" \
    --header "Authorization: Bearer ${JWT}" \
    --header "Content-Type: multipart/form-data" \
    --form "suspend=0" \
    "http://${XBOX_IP}:9999/thread/state"
```

## Responses

### Code `202`

Description: Thread state was updated

Media type: `application/json`

## Code `401`

Description: Unauthorized

Response Type: [UnauthorizedResponse](./schema_unauthorized_response.md)

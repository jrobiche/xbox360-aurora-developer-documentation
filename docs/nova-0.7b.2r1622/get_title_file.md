# GET /title/file

Download a file from the `Game:\` directory.

## Headers

| Name          | Value                               | Description                                                                                                                              |
| ------------- | ----------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Accept        | application/octet-stream, text/html | Client should expect the response body content to be in either binary or HTML format.                                                    |
| Authorization | Bearer {JWT}                        | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |
| Content-Type  | multipart/form-data                 | POST data will be passed as a multipart form.                                                                                            |

## Query Parameters

| Parameter | Required/Optional | Data Type          | Description                                                                                                                |
| --------- | ----------------- | ------------------ | -------------------------------------------------------------------------------------------------------------------------- |
| path      | Required          | URL encoded string | Path to file relative to the `Game:\` directory.<br/>_Note: Some files such as Aurora's `content.db` cannot be downloaded_ |

## Example Request

Download `default.xex` for the running title.

```
curl \
    --request GET \
    --header "Accept: application/octet-stream, text/html" \
    --header "Authorization: Bearer ${JWT}" \
    --header "Content-Type: multipart/form-data" \
    --output "default.xex" \
    "http://${XBOX_IP}:9999/title/file?path=default.xex"
```

## Responses

### Code `200`

Description: Operation was successful.

Media type: `application/octet-stream`

## Code `401`

Description: Unauthorized

Response Type: [UnauthorizedResponse](./schema_unauthorized_response.md)

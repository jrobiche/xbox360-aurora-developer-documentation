# POST /authenticate

Request a JWT for use when authenticating subsequent requests.

## Headers

| Name         | Value                       | Description                                                                         |
| ------------ | --------------------------- | ----------------------------------------------------------------------------------- |
| Accept       | application/json, text/html | Client should expect the response body content to be in either JSON or HTML format. |
| Content-Type | multipart/form-data         | POST data will be passed as a multipart form.                                       |

## Form Data

| Field    | Required/Optional | Data Type | Description                                  |
| -------- | ----------------- | --------- | -------------------------------------------- |
| username | Required          | string    | Username for user authenticating with WebUI. |
| password | Required          | string    | Password for user authenticating with WebUI. |

## Example Request

```
curl \
    --request POST \
    --header "Accept: application/json, text/html" \
    --header "Content-Type: multipart/form-data" \
    --form "username=xboxhttp" \
    --form "password=xboxhttp" \
    "http://${XBOX_IP}:9999/authenticate"
```

## Responses

### Code `200`

Description: Operation was successful.

Media type: `application/json`

Content Type: `Authentication` (See [Authentication Schema](./schema_authentication.md))

## Code `401`

Description: Unauthorized

Response Type: [UnauthorizedResponse](./schema_unauthorized_response.md)

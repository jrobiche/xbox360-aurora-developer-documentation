# GET /filebrowser

View details of files and directories.

## Headers

| Name          | Value                       | Description                                                                                                                              |
| ------------- | --------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Accept        | application/json, text/html | Client should expect the response body content to be in either JSON or HTML format.                                                      |
| Authorization | Bearer {JWT}                | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Query Parameters

| Parameter | Required/Optional | Data Type          | Description                                                                                                                                                                                                                                        |
| --------- | ----------------- | ------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| path      | Optional          | URL encoded string | View details of item at this path. Paths ending with `\` will display the contents of the directory as opposed to the directory itself.<br/>_Example: If Aurora is running you can list the database files using the path `Game:\Data\Databases\`_ |
| filter    | Optional          | URL encoded string | Only list items at path whose `name` matches this filter.                                                                                                                                                                                          |

## Example Request

List the entries of directory `Game:\Data\Databases` whose name starts with `settings`.

```
curl \
    --request GET \
    --header "Accept: application/json, text/html" \
    --header "Authorization: Bearer ${JWT}" \
    "http://${XBOX_IP}:9999/filebrowser?path=Game:%5CData%5CDatabases%5C&filter=settings*"
```

## Responses

### Code `200`

Description: Operation was successful.

Media type: `application/json`

Content Type: `FilebrowserEntry` (See [FilebrowserEntry Schema](./schema_filebrowser_entry.md))

## Code `401`

Description: Unauthorized

Response Type: [UnauthorizedResponse](./schema_unauthorized_response.md)

## Code `404`

Description: Not Found

Response Type: [NotFoundResponse](./schema_not_found_response.md)

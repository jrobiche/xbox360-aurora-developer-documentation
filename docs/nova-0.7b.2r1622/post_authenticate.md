# POST /authenticate

Request a JWT for use when authenticating subsequent requests.

## Parameters

**Query String Parameters**

| Parameter | Required/Optional | Data Type          | Description                                  |
| --------- | ----------------- | ------------------ | -------------------------------------------- |
| username  | Required          | URL Encoded String | Username for user authenticating with WebUI. |
| password  | Required          | URL Encoded String | Password for user authenticating with WebUI. |

## Example Request

```
curl --request POST --data 'username=xboxhttp&password=xboxhttp' "http://${XBOX_IP}:9999/authenticate"
```

## Success Response

**Code** `200 OK`

**Content Example**

```json
{
  "token": "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
}
```

**Content Definitions**

| Key   | Data Type | Description                                            |
| ----- | --------- | ------------------------------------------------------ |
| token | String    | A JWT containing the header and payload defined below. |

**JWT Header**

```json
{
  "alg": "HS256",
  "typ": "JWT"
}
```

**JWT Payload**

```json
{
    "exp": {expiration-timestamp},
    "ita": {issued-at-timestamp},
    "iss": "phoenix",
    "user": "{username}"
}
```

_Note: The key for "issued at timestamp" is `ita` instead of `iat`_

## Error Response

**Condition** If the `username` or `password` is incorrect.

**Code** `401 Unauthorized`

**Content**

```html
<html>
  <head>
    <title>Nova</title>
  </head>
  <body>
    <h1>Unauthorized</h1>
  </body>
</html>
```

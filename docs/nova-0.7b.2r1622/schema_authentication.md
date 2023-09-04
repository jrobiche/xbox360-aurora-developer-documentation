# Authentication Schema

| Property | Datatype | Description                                        |
| -------- | -------- | -------------------------------------------------- |
| token    | string   | JWT to use when authenticating subsequent requests |

JWT Header:

```json
{
  "alg": "HS256",
  "typ": "JWT"
}
```

JWT Payload:

```json
{
    "exp": {expiration-timestamp},
    "ita": {issued-at-timestamp},
    "iss": "phoenix",
    "user": "{username}"
}
```

_Note: The key for "issued at timestamp" is `ita` instead of `iat`_

Media type: `application/json`

Example Content:

```json
{
  "token": "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy.zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz"
}
```

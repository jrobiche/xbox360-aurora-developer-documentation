# GET /systemlink/bandwidth

Contains network usage for SystemLink.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Example Request

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/systemlink/bandwidth"
```

## Success Response

**Code** `200 OK`

**Content Example**

<!-- prettier-ignore -->
```json
{
  "bytes": {
    "downstream": 0,
    "upstream": 0
  },
  "rate": {
    "downstream": 0.000000,
    "upstream": 0.000000
  }
}
```

**Content Definitions**

| Key              | Data Type | Description                                     |
| ---------------- | --------- | ----------------------------------------------- |
| bytes/downstream | Integer   | Number of bytes that SystemLink has downloaded. |
| bytes/upstream   | Integer   | Number of bytes that SystemLink has uploaded.   |
| rate/downstream  | Float     | Current download speed.                         |
| rate/upstream    | Float     | Current upload speed.                           |

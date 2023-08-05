# GET /thread

Contains information about threads.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Example Request

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/thread"
```

## Success Response

**Code** `200 OK`

**Content Example**

```json
[
  {
    "address": "0x80000000",
    "flags": "0x00000000",
    "id": "0xF0000000",
    "priority": 11,
    "state": 1,
    "type": 1
  }
]
```

**Content Definitions**

| Key      | Data Type | Description |
| -------- | --------- | ----------- |
| address  | String    |             |
| flags    | String    |             |
| id       | String    |             |
| priority | Integer   |             |
| state    | Integer   |             |
| type     | Integer   |             |

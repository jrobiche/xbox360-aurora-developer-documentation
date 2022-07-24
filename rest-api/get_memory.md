# GET /memory

Contains the free, used, and total bytes of RAM.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Example Request

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/memory"
```

## Success Response

**Code** `200 OK`

**Content Example**

<!-- prettier-ignore -->
```json
{
  "free": 423395328,
  "total": 536870912,
  "used": 113475584
}
```

**Content Definitions**

| Key   | Data Type | Description                        |
| ----- | --------- | ---------------------------------- |
| free  | Integer   | The number of unused bytes of RAM. |
| total | Integer   | The total number of bytes of RAM.  |
| used  | Integer   | The number of used bytes of RAM.   |

# GET /thread/state

Contains state of main thread.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Example Request

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/thread/state"
```

## Success Response

**Code** `200 OK`

**Content Example**

```json
{
  "state": 0
}
```

**Content Definitions**

| Key   | Data Type | Description                                      |
| ----- | --------- | ------------------------------------------------ |
| state | Integer   | 0: Thread is active.<br/>2: Thread is suspended. |

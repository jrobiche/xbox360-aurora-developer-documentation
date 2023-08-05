# DELETE /screencapture

Delete a screenshot.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Parameters

**Query String Parameters**

| Parameter | Required/Optional | Data Type          | Description                                                                                                                                                                                                                    |
| --------- | ----------------- | ------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| uuid      | Required          | URL Encoded String | Corresponds to `filename` of a screenshot returned by either a successful [GET /screencapture/meta](get_screencapture_meta.md) request or a successful [GET /screencapture/meta/list](get_screencapture_meta_list.md) request. |

## Example Request

```
curl --request DELETE --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/screencapture?uuid=${SCREENSHOT_UUID}"
```

## Success Response

**Code** `204 No Content`

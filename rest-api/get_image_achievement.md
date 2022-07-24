# GET /image/achievement

Download achievement tile image in PNG format for running title.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Parameters

**Query String Parameters**

| Parameter | Required/Optional | Data Type          | Description                                                                                                   |
| --------- | ----------------- | ------------------ | ------------------------------------------------------------------------------------------------------------- |
| uuid      | Required          | URL Encoded String | Value of achievement's `imageid` in a success response to a [GET /achievement](./get_achievement.md) request. |

## Example Request

Download achievement tile image for achievement with `imageid` of `100`.

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/image/achievement?uuid=100" --output achievement.png
```

## Success Response

**Code** `200 OK`

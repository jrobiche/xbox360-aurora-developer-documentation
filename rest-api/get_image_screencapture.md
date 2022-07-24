# GET /image/screencapture

Download a screencapture in BMP format for the running title.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Parameters

**Query String Parameters**

| Parameter | Required/Optional | Data Type          | Description                                                                                                                                                                                               |
| --------- | ----------------- | ------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| uuid      | Required          | URL Encoded String | Value of profile's `filename` in a success response to a [GET /screencapture/meta/list](./get_screencapture_meta_list.md) request or to a [GET /screencapture/meta](./get_screencapture_meta.md) request. |

## Example Request

Download a screencapture with the filename `0000000019800101000000000`.

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/image/screencapture?uuid=0000000019800101000000000" --output screencapture.png
```

## Success Response

**Code** `200 OK`

# GET /image/profile

Download gamer picture in BMP format of a signed in player.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Parameters

**Query String Parameters**

| Parameter | Required/Optional | Data Type          | Description                                                                                     |
| --------- | ----------------- | ------------------ | ----------------------------------------------------------------------------------------------- |
| uuid      | Required          | URL Encoded String | Value of profile's `index` in a success response to a [GET /profile](./get_profile.md) request. |

## Example Request

Download gamer picture for profile with `index` of `0`.

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/image/profile?uuid=0" --output profile.png
```

## Success Response

**Code** `200 OK`

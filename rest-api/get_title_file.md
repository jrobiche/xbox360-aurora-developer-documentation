# GET /title/file

Download a file from the `Game:\` directory.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Parameters

**Query String Parameters**

| Parameter | Required/Optional | Data Type          | Description                                      |
| --------- | ----------------- | ------------------ | ------------------------------------------------ |
| path      | Required          | URL Encoded String | Path to file relative to the `Game:\` directory. |

## Example Request

Download `default.xex` for the running title.

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/title/file?path=default.xex" --output default.xex
```

## Success Response

**Code** `200 OK`

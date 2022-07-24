# GET /screencapture/meta

Take a screenshot.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Example Request

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/screencapture/meta"
```

## Success Response

**Code** `200 OK`

**Content Example**

<!-- prettier-ignore -->
```json
{
  "filename": "0000000019800101000000000",
  "filesize": 3686522,
  "info": {
    "format": "A8R8G8B8",
    "height": 720,
    "width": 1280
  },
  "timestamp": "19800101000000000",
  "titleid": "0x00000000"
}
```

**Content Definitions**

| Key         | Data Type | Description                                                                      |
| ----------- | --------- | -------------------------------------------------------------------------------- |
| filename    | String    | Name of screenshot formatted as "{titleid}{timestamp}".                          |
| filesize    | Integer   | Size of screenshot in bytes.                                                     |
| info/format | String    | Format of screenshot.                                                            |
| info/height | Integer   | Height of screenshot in pixels.                                                  |
| info/width  | Integer   | Width of screenshot in pixels.                                                   |
| timestamp   | String    | UTC timestamp of when the screenshot was taken formatted as "YYYYMMDDHHMMSSsss". |
| titleid     | String    | Hexidecimal string of running title's Title Id.                                  |

# GET /title

Contains information about the running title.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Example Request

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/title"
```

## Success Response

**Code** `200 OK`

**Content Example**

<!-- prettier-ignore -->
```json
{
  "disc": {
    "count": 0,
    "current": 0
  },
  "mediaid": "0x00000000",
  "path": "\\Device\\Harddisk0\\Partition1\\Aurora\\Aurora.xex",
  "resolution": {
    "height": 720,
    "width": 1280
  },
  "titleid": "0x00000000",
  "tuver": 0,
  "version": {
    "base": "0x00000000",
    "current": "0x00000000"
  }
}
```

**Content Definitions**

| Key               | Data Type | Description                                                                                                                               |
| ----------------- | --------- | ----------------------------------------------------------------------------------------------------------------------------------------- |
| disc/count        | Integer   | Number of discs that make up the running title.                                                                                           |
| disc/current      | Integer   | Entry index of the running title. Corresponds to `disc/current` in a successful response of a [GET /multidisc](get_multidisc.md) request. |
| mediaid           | String    | Hexidecimal string of running title's Media Id.                                                                                           |
| path              | String    | Path to running title's executable.                                                                                                       |
| resolution/height | Integer   | Height of video output in pixels.                                                                                                         |
| resolution/width  | Integer   | Width of video output in pixels.                                                                                                          |
| titleid           | String    | Hexidecimal string of running title's Title Id.                                                                                           |
| tuver             | Integer   | Title update version.                                                                                                                     |
| version/base      | String    |                                                                                                                                           |
| version/current   | String    |                                                                                                                                           |

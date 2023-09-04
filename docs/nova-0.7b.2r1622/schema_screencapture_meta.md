# ScreencaptureMeta Schema

| Property    | Datatype       | Description                                                                                             |
| ----------- | -------------- | ------------------------------------------------------------------------------------------------------- |
| filename    | string         | Name of the screen capture formatted as `{titleid}{timestamp}`<br/>_Example: 0000000019800101000000000_ |
| filesize    | integer(\$u32) | Size of the screen capture in bytes                                                                     |
| info.format | string         | Format of the screen capture<br/>_Example: A8R8G8B8_                                                    |
| info.height | integer(\$u32) | Height of the screen capture in pixels                                                                  |
| info.width  | integer(\$u32) | Width of the screen capture in pixels                                                                   |
| timestamp   | string         | UTC timestamp of when the screen capture was taken formatted as `YYYYmmddHHMMSSsss`                     |
| titleid     | string         | Hexidecimal string of the title's `titleid`                                                             |

Media type: `application/json`

Example Content:

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

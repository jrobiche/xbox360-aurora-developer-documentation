# Title Schema

| Property          | Datatype       | Description                                                                                                      |
| ----------------- | -------------- | ---------------------------------------------------------------------------------------------------------------- |
| disc.count        | integer(\$u32) | Number of discs tha tmake up the running title                                                                   |
| disc.current      | integer(\$u32) | Entry index of the running title. Corresponds to `disc.current` property of a [Multidisc](./schema_multidisc.md) |
| mediaid           | string         | Hexidecimal string of the running title's media id                                                               |
| path              | string         | Path to running title's executable<br/>_Example: \Device\Harddisk0\Partition1\Aurora\Aurora.xex_                 |
| resolution.height | integer(\$u32) | Height of video output in pixels                                                                                 |
| resolution.width  | integer(\$u32) | Width of video output in pixels                                                                                  |
| titleid           | string         | Hexidecimal string of the running title's title id                                                               |
| tuver             | integer(\$u32) | Title update version                                                                                             |
| version.base      | string         |                                                                                                                  |
| version.current   | string         |                                                                                                                  |

Media type: `application/json`

Example Content:

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

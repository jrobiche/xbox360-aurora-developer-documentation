# SystemlinkBandwidth Schema

| Property         | Datatype       | Description                              |
| ---------------- | -------------- | ---------------------------------------- |
| bytes.downstream | integer(\$u32) | Number of bytes that LiNK has downloaded |
| bytes.upstream   | integer(\$u32) | Number of bytes that LiNK has uploaded   |
| rate.downstream  | number(\$f32)  | Current download speed                   |
| rate.upstream    | number(\$f32)  | Current upload speed                     |

Media type: `application/json`

Example Content:

```json
{
  "bytes": {
    "downstream": 0,
    "upstream": 0
  },
  "rate": {
    "downstream": 0.0,
    "upstream": 0.0
  }
}
```

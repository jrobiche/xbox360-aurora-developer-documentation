# Memory Schema

| Property | Datatype       | Description                   |
| -------- | -------------- | ----------------------------- |
| free     | integer(\$u32) | Number of unused bytes of RAM |
| total    | integer(\$u32) | Total number of bytes of RAM  |
| used     | integer(\$u32) | Number of used bytes of RAM   |

Media type: `application/json`

Example Content:

```json
{
  "free": 423395328,
  "total": 536870912,
  "used": 113475584
}
```

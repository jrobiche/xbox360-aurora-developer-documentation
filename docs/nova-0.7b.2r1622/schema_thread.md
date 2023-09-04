# Thread Schema

| Property | Datatype       | Description |
| -------- | -------------- | ----------- |
| address  | string         |             |
| flags    | string         |             |
| id       | string         |             |
| priority | integer(\$u32) |             |
| state    | integer(\$u32) |             |
| type     | integer(\$u32) |             |

Media type: `application/json`

Example Content:

```json
{
  "address": "0x80000000",
  "flags": "0x00000000",
  "id": "0xF0000000",
  "priority": 11,
  "state": 1,
  "type": 1
}
```

# ThreadState Schema

| Property | Datatype       | Description                                    |
| -------- | -------------- | ---------------------------------------------- |
| state    | integer(\$u32) | 0: Thread is active<br/>2: Thread is suspended |

Media type: `application/json`

Example Content:

```json
{
  "state": 0
}
```

# Achievement Schema

| Property            | Datatype       | Description                                                                                               |
| ------------------- | -------------- | --------------------------------------------------------------------------------------------------------- |
| cred                | integer(\$u32) | Gamerscore rewarded when achievement is unlocked                                                          |
| hidden              | integer(\$u32) | 0: Achievement is not hidden<br/>1: Achievement is hidden                                                 |
| id                  | integer(\$u32) | Id of the achievement                                                                                     |
| imageid             | integer(\$u32) | Value of `uuid` when performing a [GET /image/achievement](./get_image_achievement.md) request            |
| strings.caption     | string         | Caption shown above description                                                                           |
| strings.description | string         | Description shown if achievement is unlocked                                                              |
| strings.unachieved  | string         | Description shown if achievement is locked                                                                |
| type                | integer(\$u32) | 1: Completion<br/>2: Leveling<br/>3: Unlock<br/>4: Event<br/>5: Tournament<br/>6: Checkpoint<br/>7: Other |

Media type: `application/json`

Example Content:

<!-- prettier-ignore -->
```json
{
  "cred": 15,
  "hidden": 0,
  "id": 4,
  "imageid": 2,
  "strings": {
    "caption": "Example",
    "description": "Achieved text.",
    "unachieved": "Unachieved text."
  },
  "type": 1
}
```

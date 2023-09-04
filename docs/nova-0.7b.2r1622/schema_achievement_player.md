# AchievementPlayer Schema

| Property          | Datatype       | Description                                                                                          |
| ----------------- | -------------- | ---------------------------------------------------------------------------------------------------- |
| id                | integer(\$u32) | The `id` of an Achievement returned by a successful [GET /achievement](./get_achievement.md) request |
| player[`{index}`] | integer(\$u32) | 0: Player has not unlocked the achievement<br/>1: Player has unlocked the achievement                |

_Note: The `player` list will always contain exactly 4 elements where the value at index 0 corresponds to player 1, index 1 is player 2, index 2 is player 3, and index 3 is player 4_

Media type: `application/json`

Example Content:

<!-- prettier-ignore -->
```json
{
  "id": 1,
  "player": [
    0,
    0,
    0,
    0
  ]
}
```

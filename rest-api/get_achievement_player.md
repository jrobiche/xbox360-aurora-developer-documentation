# GET /achievement/player

Contains information about each player's unlock status of each achievement for the running title.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Example Request

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/achievement/player"
```

## Success Response

**Code** `200 OK`

**Content Example**

<!-- prettier-ignore -->
```json
[
  {
    "id": 1,
    "player": [
      0,
      0,
      0,
      0
    ]
  }
]
```

**Content Definitions**

| Key                  | Data Type | Description                                                                                                    |
| -------------------- | --------- | -------------------------------------------------------------------------------------------------------------- |
| id                   | Integer   | Corresponds to `id` of an achievement returned by a successful [GET /achievement](get_achievement.md) request. |
| player/{playerIndex} | Integer   | 0: Player has unlocked the achievement.<br/>1: Player has not unlocked the achievement.                        |

## Error Response

Returned if the running title does not have any achievements.

**Code** `204 No Content`

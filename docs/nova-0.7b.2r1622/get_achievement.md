# GET /achievement

Contains information about achievements for the running title.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Example Request

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/achievement"
```

## Success Response

**Code** `200 OK`

**Content Example**

<!-- prettier-ignore -->
```json
[
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
]
```

**Content Definitions**

| Key                 | Data Type | Description                                                                                               |
| ------------------- | --------- | --------------------------------------------------------------------------------------------------------- |
| cred                | Integer   | Gamerscore rewarded when achievement is unlocked.                                                         |
| hidden              | Integer   | 0: Achievement is not hidden.<br/>1: Achivement is hidden.                                                |
| id                  | Integer   |                                                                                                           |
| imageid             | Integer   | Value of `uuid` when performing a [GET /image/achievement](./get_image_achievement.md) request.           |
| strings/caption     | String    | Caption shown above description.                                                                          |
| strings/description | String    | Description shown if achievement is unlocked.                                                             |
| strings/unachieved  | String    | Description shown if achievement is locked.                                                               |
| type                | Integer   | 1: Completion<br/>2: Leveling<br/>3: Unlock<br/>4: Event<br/>5: Tournament<br/>6: Checkpoint<br/>7: Other |

## Error Response

**Condition** Returned if the running title does not have any achievements.

**Code** `204 No Content`

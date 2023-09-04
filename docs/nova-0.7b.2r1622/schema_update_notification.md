# UpdateNotification Schema

| Property      | Datatype       | Description                                                                                                                                                                 |
| ------------- | -------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| achievements  | integer(\$u32) | Number of titles launched during the currents session that contain achievements<br/>_Note: Value increments by 2 each time a new title containing achievements is launched_ |
| profiles      | integer(\$u32) | Number of times profiles have been signed into or out of during the current session<br/>_Note: Value also increments when a new title is launched_                          |
| screencapture | integer(\$u32) | Number of screen captures taken during the current session                                                                                                                  |
| title         | integer(\$u32) | Number of titles launched during the current session                                                                                                                        |

Media type: `application/json`

Example Content:

```json
{
  "achievements": 8,
  "profiles": 11,
  "screencapture": 14,
  "title": 11
}
```

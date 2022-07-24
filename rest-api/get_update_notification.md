# GET /update/notification

Contains information about changes in achievements, profiles, screenshots, and titles.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Example Request

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/update/notification"
```

## Success Response

**Code** `200 OK`

**Content Example**

<!-- prettier-ignore -->
```json
{
  "achievements": 8,
  "profiles": 11,
  "screencapture": 14,
  "title": 11
}
```

**Content Definitions**

| Key           | Data Type | Description                                                                                                                                                                |
| ------------- | --------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| achievements  | Integer   | Number of titles launched during the current session that contain achievements.<br/>Note: Value increments by 2 each time a new title containing achievements is launched. |
| profiles      | Integer   | Number of times profiles have been signed into or out of during the current session.<br/>Note: Value also increments when a new title is launched.                         |
| screencapture | Integer   | Number of screenshots taken during the current session.                                                                                                                    |
| title         | Integer   | Number of titles launched during the current session.                                                                                                                      |

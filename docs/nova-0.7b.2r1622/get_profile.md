# GET /profile

Contains information about logged in profiles.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Example Request

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/profile"
```

## Success Response

**Code** `200 OK`

**Content Example**

<!-- prettier-ignore -->
```json
[
  {
    "gamerscore": 0,
    "gamertag": "",
    "index": 0,
    "signedin": 0,
    "xuid": "0000000000000000"
  },
  {
    "gamerscore": 0,
    "gamertag": "",
    "index": 1,
    "signedin": 0,
    "xuid": "0000000000000000"
  },
  {
    "gamerscore": 0,
    "gamertag": "",
    "index": 2,
    "signedin": 0,
    "xuid": "0000000000000000"
  },
  {
    "gamerscore": 0,
    "gamertag": "",
    "index": 3,
    "signedin": 0,
    "xuid": "0000000000000000"
  }
]
```

**Content Definitions**

| Key                      | Data Type | Description                                                     |
| ------------------------ | --------- | --------------------------------------------------------------- |
| {playerIndex}/gamerscore | Integer   | Player's gamerscore.                                            |
| {playerIndex}/gamertag   | String    | Player's gamertag.                                              |
| {playerIndex}/index      | Integer   | 0: Player 1.<br/>1: Player 2.<br/>2: Player 3.<br/>3: Player 4. |
| {playerIndex}/signedin   | Integer   | 0: Not signed in.<br/>1: Signed in.                             |
| {playerIndex}/xuid       | String    | Player's XUID.                                                  |

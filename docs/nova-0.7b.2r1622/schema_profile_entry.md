# ProfileEntry Schema

| Property   | Datatype       | Description                                                  |
| ---------- | -------------- | ------------------------------------------------------------ |
| gamerscore | integer(\$u32) | Profile's gamerscore                                         |
| gamertag   | string         | Profile's gamertag                                           |
| index      | integer(\$u32) | 0: Player 1<br/>1: Player 2<br/>2: Player: 3<br/>3: Player 4 |
| signedin   | integer(\$u32) | 0: Not signed in<br/>1: Signed in                            |
| xuid       | string         | Profile's XUID                                               |

Media type: `application/json`

Example Content:

```json
{
  "gamerscore": 0,
  "gamertag": "",
  "index": 0,
  "signedin": 0,
  "xuid": "0000000000000000"
}
```

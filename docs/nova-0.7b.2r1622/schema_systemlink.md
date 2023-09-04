# Systemlink Schema

| Property      | Datatype       | Description                                   |
| ------------- | -------------- | --------------------------------------------- |
| apikey        | string         | Unity API key                                 |
| broadcastport | integer(\$u32) | Broadcast port used by LiNK                   |
| dataport      | integer(\$u32) | Data port used by LiNK                        |
| enabled       | integer(\$u32) | 0: LiNK is not enabled<br/>1: LiNK is enabled |
| gatewayip     | string         | Router's IP address                           |
| gatewaymac    | string         | Router's MAC address                          |
| username      | string         | Unity username                                |
| xboxip        | string         | Console's IP address                          |
| xboxmac       | string         | Console's MAC address                         |

Media type: `application/json`

Example Content:

```json
{
  "apikey": "",
  "broadcastport": 3072,
  "dataport": 3071,
  "enabled": 1,
  "gatewayip": "192.168.1.1",
  "gatewaymac": "00:00:00:00:00:00",
  "username": "",
  "xboxip": "192.168.1.123",
  "xboxmac": "00:00:00:00:00:00"
}
```

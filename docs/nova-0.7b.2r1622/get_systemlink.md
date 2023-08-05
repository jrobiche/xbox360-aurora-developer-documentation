# GET /systemlink

Contains information about System Link configuration.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Example Request

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/systemlink"
```

## Success Response

**Code** `200 OK`

**Content Example**

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

**Content Definitions**

| Key           | Data Type | Description                                                 |
| ------------- | --------- | ----------------------------------------------------------- |
| apikey        | String    | Unity API Key.                                              |
| broadcastport | Integer   | Broadcast port used by SystemLink.                          |
| dataport      | Integer   | Data port used by SystemLink.                               |
| enabled       | Integer   | 0: SystemLink is not enabled.<br/>1: SystemLink is enabled. |
| gatewayip     | String    | IP address of modem.                                        |
| gatewaymac    | String    | MAC address of modem.                                       |
| username      | String    | Unity username.                                             |
| xboxip        | String    | IP address of console.                                      |
| xboxmac       | String    | MAC address of console.                                     |

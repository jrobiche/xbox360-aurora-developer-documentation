# GET /smc

Contains information about the System Management Controller.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Example Request

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/smc"
```

## Success Response

**Code** `200 OK`

**Content Example**

<!-- prettier-ignore -->
```json
{
  "avpack": 0,
  "dvdmediatype": 0,
  "smcversion": "3.1",
  "temperature": {
    "celsius": true,
    "max": {
      "cpu": 85.00,
      "gpu": 80.00,
      "memory": 80.00
    },
    "target": {
      "cpu": 75.00,
      "gpu": 70.00,
      "memory": 70.00
    }
  },
  "tiltstate": 1,
  "traystate": 0
}
```

**Content Definitions**

| Key                       | Data Type | Description                                                                                                                                                                                   |
| ------------------------- | --------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| avpack                    | Integer   | 0: Unknown<br/>1: HDMI<br/>2: Component<br/>3: VGA<br/>4: Composite TV<br/>5: Composite HD<br/>6: HDMI Audio                                                                                  |
| dvdmediatype              | Integer   | 0: None<br/> 1: Xbox 360<br/> 2: Xbox Classic<br/> 3: Unknown<br/> 4: DVD Audio<br/> 5: DVD Movie<br/> 6: CD Video<br/> 7: CD Audio<br/> 8: CD Data<br/> 9: Game Movie Hybrid<br/> 10: HD DVD |
| smcversion                | String    | Version of SMC.                                                                                                                                                                               |
| temperature/celsius       | Boolean   | true: Unit of temperature values is Celsius.<br/>false: Unit of temperature values is Fahrenheit.                                                                                             |
| temperature/max/cpu       | Float     | Shutdown if CPU reaches this value.                                                                                                                                                           |
| temperature/max/gpu       | Float     | Shutdown if GPU reaches this value.                                                                                                                                                           |
| temperature/max/memory    | Float     | Shutdown if RAM reaches this value.                                                                                                                                                           |
| temperature/target/cpu    | Float     | Fans will attempt to maintain this temperature for the CPU.                                                                                                                                   |
| temperature/target/gpu    | Float     | Fans will attempt to maintain this temperature for the GPU.                                                                                                                                   |
| temperature/target/memory | Float     | Fans will attempt to maintain this temperature for the RAM.                                                                                                                                   |
| tiltstate                 | Integer   | 0: Horizontal<br/> 1: Vertical                                                                                                                                                                |
| traystate                 | Integer   | 0: Idle<br/> 1: Closing<br/> 2: Open<br/> 3: Opening<br/> 4: Closed<br/> 5: Error                                                                                                             |

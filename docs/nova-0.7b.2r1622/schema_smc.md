# Smc Schema

| Property                  | Datatype       | Description                                                                                                                                                                         |
| ------------------------- | -------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| avpack                    | integer(\$u32) | 0: Unknown<br/>1: HDMI<br/>2: Component<br/>3: VGA<br/>4: Composite TV<br/>Composite HD<br/>HDMI Audio                                                                              |
| dvdmediatype              | integer(\$u32) | 0: None<br/>1: Xbox 360<br/>2: Xbox Classic<br/>3: Unknown<br/>4: DVD Audio<br/>5: DVD Movie<br/>6: CD Video<br/>7: CD Audio<br/>8: CD Data<br/>9: Game Movie Hybrid<br/>10: HD DVD |
| smcversion                | string         | Version of SMC                                                                                                                                                                      |
| temperature.celsius       | boolean        | true: Unit of temperature values is Celsius<br/>false: Unit of temperature values is Fahrenheit                                                                                     |
| temperature.max.cpu       | number(\$f32)  | Shutdown if CPU temperature reaches this value                                                                                                                                      |
| temperature.max.gpu       | number(\$f32)  | Shutdown if GPU temperature reaches this value                                                                                                                                      |
| temperature.max.memory    | number(\$f32)  | Shutdown if RAM temperature reaches this value                                                                                                                                      |
| temperature.target.cpu    | number(\$f32)  | Fans will attempt to maintain this temperature for the CPU                                                                                                                          |
| temperature.target.gpu    | number(\$f32)  | Fans will attempt to maintain this temperature for the GPU                                                                                                                          |
| temperature.target.memory | number(\$f32)  | Fans will attempt to maintain this temperature for the RAM                                                                                                                          |
| tiltstate                 | integer(\$u32) | 0: Vertical<br/>1: Horizontal                                                                                                                                                       |
| traystate                 | integer(\$u32) | 0: Idle<br/>1: Closing<br/>2: Open<br/>3: Opening<br/>4: Closed<br/>5: Error                                                                                                        |

Media type: `application/json`

Example Content:

```json
{
  "avpack": 0,
  "dvdmediatype": 0,
  "smcversion": "3.1",
  "temperature": {
    "celsius": true,
    "max": {
      "cpu": 85.0,
      "gpu": 80.0,
      "memory": 80.0
    },
    "target": {
      "cpu": 75.0,
      "gpu": 70.0,
      "memory": 70.0
    }
  },
  "tiltstate": 1,
  "traystate": 0
}
```

# Temperature Schema

| Property | Datatype      | Description                                                                                     |
| -------- | ------------- | ----------------------------------------------------------------------------------------------- |
| case     | number(\$f32) | Temperature of the case                                                                         |
| celsius  | boolean       | true: Unit of temperature values is Celsius<br/>false: Unit of temperature values is Fahrenheit |
| cpu      | number(\$f32) | Temperature of the CPU                                                                          |
| gpu      | number(\$f32) | Temperature of the GPU                                                                          |
| memory   | number(\$f32) | Temperature of the RAM                                                                          |

Media type: `application/json`

Example Content:

```json
{
  "case": 0.0,
  "celsius": true,
  "cpu": 0.0,
  "gpu": 0.0,
  "memory": 0.0
}
```

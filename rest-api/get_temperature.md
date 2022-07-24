# GET /temperature

Contains the current temperatures of CPU, GPU, RAM, and case.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Example Request

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/temperature"
```

## Success Response

**Code** `200 OK`

**Content Example**

<!-- prettier-ignore -->
```json
{
  "case": 0.00,
  "celsius": true,
  "cpu": 0.00,
  "gpu": 0.00,
  "memory": 0.00
}
```

**Content Definitions**

| Key     | Data Type | Description                                                                                       |
| ------- | --------- | ------------------------------------------------------------------------------------------------- |
| case    | Float     | Temperature of the case.                                                                          |
| celsius | Boolean   | true: Unit of temperature values is Celsius.<br/>false: Unit of temperature values is Fahrenheit. |
| cpu     | Float     | Temperature of the CPU.                                                                           |
| gpu     | Float     | Temperature of the GPU.                                                                           |
| memory  | Float     | Temperature of the RAM.                                                                           |

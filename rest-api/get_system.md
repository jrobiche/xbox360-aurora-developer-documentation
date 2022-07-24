# Get /system

Contains information about the console.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Example Request

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/system"
```

## Success Response

**Code** `200 OK`

**Content Example**

```json
{
  "console": {
    "motherboard": "Xenon",
    "type": "Retail"
  },
  "consoleid": "000000000000",
  "cpukey": "00000000000000000000000000000000",
  "dvdkey": "00000000000000000000000000000000",
  "serial": "000000000000",
  "version": {
    "build": 17559,
    "major": 2,
    "minor": 0,
    "qfe": 0
  }
}
```

**Content Definitions**

| Key                 | Data Type | Description                                                                                                   |
| ------------------- | --------- | ------------------------------------------------------------------------------------------------------------- |
| console/motherboard | String    | Console Motherboards<br/>- Xenon<br/>- Zephyr<br/>- Opus<br/>- Falcon<br/>- Jasper<br/>- Trinity<br/>- Corona |
| console/type        | String    | Console Types<br/>- Devkit<br/>- Retail                                                                       |
| consoleid           | String    | Console's Product Id.                                                                                         |
| cpukey              | String    | Console's CPU key.                                                                                            |
| dvdkey              | String    | Console's DVD key.                                                                                            |
| serial              | String    | Console's serial number.                                                                                      |
| version/build       | Integer   | Build version of dashboard.                                                                                   |
| version/major       | Integer   | Major version of dashboard.                                                                                   |
| version/minor       | Integer   | Minor version of dashboard.                                                                                   |
| version/qfe         | Integer   | Quick-Fix Engineering version of dashboard.                                                                   |

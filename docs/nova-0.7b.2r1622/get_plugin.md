# GET /plugin

Contains information about the NOVA plugin.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Example Request

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/plugin"
```

## Success Response

**Code** `200 OK`

**Content Example**

<!-- prettier-ignore -->
```json
{
  "features": {
    "achievements": 1,
    "debugger": 1,
    "gamepad": 1,
    "httpdaemon": 1,
    "multidisc": 1,
    "network": 0,
    "systemlink": 1,
    "threads": 1,
    "trainers": 0
  },
  "path": {
    "launcher": "\\Device\\Harddisk0\\Partition1\\Aurora\\Aurora.xex"
    "root": "\\Device\\Harddisk0\\Partition1\\Aurora\\Plugins",
    "user": "\\Device\\Harddisk0\\Partition1\\Aurora\\Plugins\\UserData",
    "web": "\\Device\\Harddisk0\\Partition1\\Aurora\\Plugins\\WebRoot",
  },
  "version": {
    "api": 3,
    "number": {
      "build": 1622,
      "major": 0,
      "minor": 7,
      "type": 2
    }
  }
}
```

**Content Definitions**

| Key                   | Data Type | Description                                                         |
| --------------------- | --------- | ------------------------------------------------------------------- |
| feature/{featureName} | Integer   | 0: Plugin does not support feature.<br/>1: Plugin supports feature. |
| path/launcher         | String    | Path to launcher executable.                                        |
| path/root             | String    | Path to `Plugins` directory.                                        |
| path/user             | String    | Path to `UserData` directory.                                       |
| path/web              | String    | Path to `WebRoot` directory.                                        |
| version/api           | Integer   | API version.                                                        |
| version/number/build  | Integer   | Build version of release.                                           |
| version/number/major  | Integer   | Major version of release.                                           |
| version/number/minor  | Integer   | Minor version of release.                                           |
| version/number/type   | Integer   | 1: Alpha<br/>2: Beta<br/>3: Release                                 |

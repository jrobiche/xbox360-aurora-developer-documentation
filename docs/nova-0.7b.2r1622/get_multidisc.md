# GET /mutidisc

Contains information about the different discs that make up the running title.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Success Response

**Code** `200 OK`

**Content Example**

<!-- prettier-ignore -->
```json
{
  "disc": {
    "current": 2,
    "total": 2
  },
  "entries": [
    {
      "container": 1,
      "path": "\\Device\\Harddisk0\\Partition1\\content\\0000000000000000\\ffffffff\\00007000\\00000000000000000000"
    },
    {
      "container": 1,
      "path": "\\Device\\Harddisk0\\Partition1\\content\\0000000000000000\\ffffffff\\00007000\\ffffffffffffffffffff"
    },
    {
      "container": 0,
      "path": ""
    },
    {
      "container": 0,
      "path": ""
    },
    {
      "container": 0,
      "path": ""
    }
  ],
  "titleid": "0xFFFFFFFF"
}
```

**Content Definitions**

| Key                            | Data Type | Description                                                                         |
| ------------------------------ | --------- | ----------------------------------------------------------------------------------- |
| disc/current                   | Integer   | Entry index of the running title. Note: Entry index starts at 1.                    |
| disc/total                     | Integer   | Number of discs that make up the running title.                                     |
| entries/{entryIndex}/container | Integer   | 0: Executable is not in container format.<br/>1: Executable is in container format. |
| entries/{entryIndex}/path      | String    | Path to running title's executable.                                                 |
| titleid                        | String    | Hexidecimal string of running title's Title Id.                                     |

## Error Response

Returned if the running title is not a multidisc title.

**Code** `204 No Content`

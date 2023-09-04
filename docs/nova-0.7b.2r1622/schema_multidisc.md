# Multidisc Schema

| Property                     | Datatype       | Description                                                                                                                            |
| ---------------------------- | -------------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| disc.current                 | integer(\$u32) | Entry index of the running title<br/>_Note: Entry index starts at 1_                                                                   |
| disc.total                   | integer(\$u32) | Number of discs that make up the running title                                                                                         |
| entries[`{index}`].container | integer(\$u32) | 0: Executable is not in container format<br/>1: Executable is in container format                                                      |
| entries[`{index}`].path      | string         | Path to title's executable<br/>_Example: \Device\Harddisk0\Partition1\content\0000000000000000\ffffffff\00007000\00000000000000000000_ |
| titleid                      | string         | Hexidecimal string of running title's titleid<br/>_Example: 0xFFFFFFFF_                                                                |

_Note: The `entries` list will always contain exactly 5 elements_

Media type: `application/json`

Example Content:

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

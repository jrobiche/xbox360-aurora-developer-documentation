## Details

_table_ **Aurora.GetFSPluginVersion** _()_

Get version of the Aurora plugin.

Script Permissions: None

Table Values:

| Key      | Data Type | Description                       |
| -------- | --------- | --------------------------------- |
| Major    | Integer   | Major version of Aurora plugin.   |
| Minor    | Integer   | Minor version of Aurora plugin.   |
| Revision | Integer   | Revision number of Aurora plugin. |
| Type     | Integer   | Type version of Aurora plugin.    |

Example Table:

```
["Major"]: 0
["Minor"]: 7
["Revision"]: 1622
["Type"]: 2
```

## Example Script

See [Aurora Functions Example Script](./example-scripts/ExampleAuroraFunctions/Main.lua) for an example of using this function.

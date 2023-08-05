## Details

_table_ **Aurora.GetDashVersion** _()_

Get version of Aurora binaries.

Script Permissions: None

Table Values:

| Key      | Data Type | Description                         |
| -------- | --------- | ----------------------------------- |
| Major    | Integer   | Major version of Aurora binaries.   |
| Minor    | Integer   | Minor version of Aurora binaries.   |
| Revision | Integer   | Revision number of Aurora binaries. |
| Type     | Integer   | Type version of Aurora binaries.    |

Example Table:

```
["Major"]: 0
["Minor"]: 7
["Revision"]: 1655
["Type"]: 2
```

## Example Script

See [Aurora Functions Example Script](./example-scripts/ExampleAuroraFunctions/Main.lua) for an example of using this function.

## Details

_table_ **Aurora.GetMemoryInfo** _()_

Get the available, used, and total bytes of RAM.

Script Permissions: None

Table Values:

| Key       | Data Type | Description                       |
| --------- | --------- | --------------------------------- |
| Available | Integer   | Number of available bytes of RAM. |
| Total     | Integer   | Number of total bytes of RAM.     |
| Used      | Integer   | Number of used bytes of RAM.      |

Example Table:

```
["Available"]: 289587200
["Total"]: 536870912
["Used"]: 247283712
```

## Example Script

See [Aurora Functions Example Script](./example-scripts/ExampleAuroraFunctions/Main.lua) for an example of using this function.

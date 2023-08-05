## Details

_table_ **Aurora.GetTime** _()_

Get the hour, minute, second, and milliseconds of the system's current timestamp in UTC.

Script Permissions: None

Table Values:

| Key          | Data Type | Description                        |
| ------------ | --------- | ---------------------------------- |
| Hour         | Integer   | Hour of current timestamp.         |
| Milliseconds | Integer   | Milliseconds of current timestamp. |
| Minute       | Integer   | Minute of current timestamp.       |
| Second       | Integer   | Second of current timestamp.       |

Example Table:

```
["Hour"]: 20
["Milliseconds"]: 950
["Minute"]: 12
["Second"]: 53
```

## Example Script

See [Aurora Functions Example Script](./example-scripts/ExampleAuroraFunctions/Main.lua) for an example of using this function.

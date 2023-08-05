## Details

_table_ **Aurora.GetDate** _()_

Get the day of the week, day of the month, month, and year of the system's current timestamp in UTC.

Script Permissions: None

Table Values:

| Key       | Data Type | Description                                    |
| --------- | --------- | ---------------------------------------------- |
| Day       | Integer   | Current day of month.                          |
| DayOfWeek | Integer   | Current day of week. 0: Sunday, 1: Monday, ... |
| Month     | Integer   | Current month. 1: January, 2: February, ...    |
| Year      | Integer   | Curent year.                                   |

Example Table:

```
["Day"]: 4
["DayOfWeek"]: 0
["Month"]: 1
["Year"]: 1980
```

## Example Script

See [Aurora Functions Example Script](./example-scripts/ExampleAuroraFunctions/Main.lua) for an example of using this function.

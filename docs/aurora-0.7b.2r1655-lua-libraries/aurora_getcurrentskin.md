## Details

_table_ **Aurora.GetCurrentSkin** _()_

Get information about the current Aurora skin.

Script Permissions: None

Table Values:

| Key          | Data Type | Description |
| ------------ | --------- | ----------- |
| Author       | String    |             |
| Compressed   | Boolean   |             |
| CreationDate | String    |             |
| Description  | String    |             |
| FilePath     | String    |             |
| Name         | String    |             |
| ResourcePath | String    |             |
| Revision     | Integer   |             |
| UpdateId     | String    |             |

Example Table:

```
["Author"]: "Phoenix"
["Compressed"]: true
["CreationDate"]: "2018-05-12"
["Description"]: "Aurora's Default Skin. http://phoenix.xboxunity.net"
["FilePath"]: "Game:\Skins\Default.xzp"
["Name"]: "Default"
["ResourcePath"]: "memory://40200030,4F0B6D#"
["Revision"]: 1
["UpdateId"]: ""
```

## Example Script

See [Aurora Functions Example Script](./example-scripts/ExampleAuroraFunctions/Main.lua) for an example of using this function.

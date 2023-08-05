## Details

_table_ **Content.FindContent** _(unsigned titleid, [string titleName])_

Find entries in content database with a _TitleId_ of _titleid_.
If a _titleName_ is given, then the table returned will only contain entries whose _Name_ matches _titleName_.

Script Permissions: content

Content Table Values:

| Key                          | Data Type | Description |
| ---------------------------- | --------- | ----------- |
| AssetFlag                    | Integer   |             |
| BaseVersion                  | Integer   |             |
| CapabilitiesFlag             | Integer   |             |
| CapabilitiesOffline          | Table     |             |
| CapabilitiesOffline.HighPart | Integer   |             |
| CapabilitiesOffline.LowPart  | Integer   |             |
| CapabilitiesOnline           | Integer   |             |
| CaseIndex                    | Integer   |             |
| DateAdded                    | Table     |             |
| DateAdded.Day                | Integer   |             |
| DateAdded.DayOfWeek          | Integer   |             |
| DateAdded.HighPart           | Integer   |             |
| DateAdded.Hour               | Integer   |             |
| DateAdded.LowPart            | Integer   |             |
| DateAdded.Milliseconds       | Integer   |             |
| DateAdded.Minute             | Integer   |             |
| DateAdded.Month              | Integer   |             |
| DateAdded.Second             | Integer   |             |
| DateAdded.Year               | Integer   |             |
| DefaultGroup                 | Integer   |             |
| Description                  | String    |             |
| Developer                    | String    |             |
| Directory                    | String    |             |
| DiscNum                      | Integer   |             |
| DiscsInSet                   | Integer   |             |
| Enabled                      | Boolean   |             |
| Executable                   | String    |             |
| Favorite                     | Boolean   |             |
| Flags                        | Integer   |             |
| Genre                        | Integer   |             |
| GenreStr                     | String    |             |
| Group                        | Integer   |             |
| Hidden                       | Boolean   |             |
| Id                           | Integer   |             |
| LastPlayed                   | Table     |             |
| LastPlayed.Day               | Integer   |             |
| LastPlayed.DayOfWeek         | Integer   |             |
| LastPlayed.HighPart          | Integer   |             |
| LastPlayed.Hour              | Integer   |             |
| LastPlayed.LowPart           | Integer   |             |
| LastPlayed.Milliseconds      | Integer   |             |
| LastPlayed.Minute            | Integer   |             |
| LastPlayed.Month             | Integer   |             |
| LastPlayed.Second            | Integer   |             |
| LastPlayed.Year              | Integer   |             |
| LiveRaters                   | Integer   |             |
| LiveRating                   | Float     |             |
| MediaId                      | Integer   |             |
| Name                         | String    |             |
| Publisher                    | String    |             |
| ReleaseDate                  | String    |             |
| Root                         | String    |             |
| ScriptData                   | String    |             |
| SystemLink                   | Boolean   |             |
| TitleId                      | Integer   |             |
| Type                         | Integer   |             |
| VirtualRoot                  | String    |             |

## Example Script

See [Content Functions Example Script](./example-scripts/ExampleContentFunctions/Main.lua) for an example of using this function.

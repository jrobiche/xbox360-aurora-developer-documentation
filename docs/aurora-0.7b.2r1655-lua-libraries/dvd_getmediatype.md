## Details

_unsigned_ **Dvd.GetMediaType** _()_

Get the media type of the disc in the DVD tray.

Script Permissions: filesystem

Return Values:

| Value | Description          |
| ----- | -------------------- |
| 0     | None                 |
| 1     | Xbox 360 Game        |
| 2     | Xbox Classic Game    |
| 3     | Unknown              |
| 4     | Audio DVD            |
| 5     | Movie DVD            |
| 6     | Video CD             |
| 7     | Audio CD             |
| 8     | Data CD              |
| 9     | Hybrid               |
| 10    | HD-DVD               |
| 254   | Disc is initializing |

## Example Script

See [Dvd Functions Example Script](./example-scripts/ExampleDvdFunctions/Main.lua) for an example of using this function.

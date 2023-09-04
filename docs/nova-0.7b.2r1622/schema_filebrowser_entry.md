# FilebrowserEntry Schema

| Property   | Datatype       | Description                                                                                                                                                                                                                                                              |
| ---------- | -------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| name       | integer(\$u32) | Name of the file                                                                                                                                                                                                                                                         |
| attributes | integer(\$u32) | A value made up of bitwise flags that contains information about the file<br/>See [https://learn.microsoft.com/en-us/windows/win32/fileio/file-attribute-constants](https://learn.microsoft.com/en-us/windows/win32/fileio/file-attribute-constants) for a list of flags |
| size       | integer(\$u32) | Size of the file in bytes<br/>_Note: Mounts and directories are 0 bytes_                                                                                                                                                                                                 |

Media type: `application/json`

Example Content:

```json
{
  "name": "settings.db",
  "attributes": 128,
  "size": 37888
}
```

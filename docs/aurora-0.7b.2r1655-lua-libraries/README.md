# Aurora 0.7b.2 r1655 Lua Libraries Documentation

Version: Lua 5.3.3

## Global

| Documentation | Function Declaration                  | Description                                                                                                           |
| ------------- | ------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| _TODO_        | *table* **enum** *(array val)*        | Create a *table* that acts as an _enum_.                                                                              |
| _TODO_        | _void_ **print** _(string val)_       | Print the string _val_ to `Game:\Data\Logs\debug.log`.                                                                |
| _TODO_        | _unsigned_ **tounsigned** _(int val)_ | Convert _val_ to a 32-bit unsigned integer.<br/>_Note: A 32-bit unsigned integer may also be referred to as a DWORD._ |
| _TODO_        | _void_ **tprint** _(table val)_       | Print the table _val_ to `Game:\Data\Logs\debug.log`.                                                                 |
| _TODO_        | _void_ **wait** _(unsigned val)_      | Wait for _val_ milliseconds.                                                                                          |

## Aurora

| Documentation                                | Function Declaration                                  | Description                                                     |
| -------------------------------------------- | ----------------------------------------------------- | --------------------------------------------------------------- |
| [Details](./aurora_closedvdtray.md)          | _void_ **Aurora.CloseDVDTray** _()_                   | Close the DVD tray.                                             |
| [Details](./aurora_crc32hash.md)             | _string_ **Aurora.Crc32Hash** _(string input)_        | Return CRC-32 checksum of a string.                             |
| [Details](./aurora_crc32hashfile.md)         | _string_ **Aurora.Crc32HashFile** _(string filePath)_ | Return CRC-32 checksum of a file.                               |
| [Details](./aurora_getcurrentlanguage.md)    | _table_ **Aurora.GetCurrentLanguage** _()_            | Get information about the current Aurora language pack.         |
| [Details](./aurora_getcurrentskin.md)        | _table_ **Aurora.GetCurrentSkin** _()_                | Get information about the current Aurora skin.                  |
| [Details](./aurora_getdvdtraystate.md)       | _unsigned_ **Aurora.GetDVDTrayState** _()_            | Return current state of DVD tray.                               |
| [Details](./aurora_getdashversion.md)        | _table_ **Aurora.GetDashVersion** _()_                | Get version of Aurora binaries.                                 |
| [Details](./aurora_getdate.md)               | _table_ **Aurora.GetDate** _()_                       | Get the system's current date.                                  |
| [Details](./aurora_getfspluginversion.md)    | _table_ **Aurora.GetFSPluginVersion** _()_            | Get version of the Aurora plugin.                               |
| [Details](./aurora_getipaddress.md)          | _string_ **Aurora.GetIPAddress** _()_                 | Return IP address of console.                                   |
| [Details](./aurora_getmacaddress.md)         | _string_ **Aurora.GetMACAddress** _()_                | Return MAC address of console.                                  |
| [Details](./aurora_getmemoryinfo.md)         | _table_ **Aurora.GetMemoryInfo** _()_                 | Get the available, used, and total bytes of RAM.                |
| [Details](./aurora_getskinversion.md)        | _table_ **Aurora.GetSkinVersion** _()_                | Get version of Aurora skin.                                     |
| [Details](./aurora_gettemperatures.md)       | _table_ **Aurora.GetTemperatures** _()_               | Get current temperatures of the motherboard, CPU, GPU, and RAM. |
| [Details](./aurora_gettime.md)               | _table_ **Aurora.GetTime** _()_                       | Get the system's current time.                                  |
| [Details](./aurora_hasinternetconnection.md) | _boolean_ **Aurora.HasInternetConnection** _()_       | Check if console has a connection to the Internet.              |
| [Details](./aurora_md5hash.md)               | _string_ **Aurora.Md5Hash** _(string input)_          | Return MD5 checksum of a string.                                |
| [Details](./aurora_md5hashfile.md)           | _string_ **Aurora.Md5HashFile** _(string filePath)_   | Return MD5 checksum of a file.                                  |
| [Details](./aurora_opendvdtray.md)           | _void_ **Aurora.OpenDVDTray** _()_                    | Open the DVD tray.                                              |
| [Details](./aurora_reboot.md)                | _void_ **Aurora.Reboot** _()_                         | Restart the console.                                            |
| [Details](./aurora_restart.md)               | _void_ **Aurora.Restart** _()_                        | Restart Aurora.                                                 |
| [Details](./aurora_sha1hash.md)              | _string_ **Aurora.Sha1Hash** _(string input)_         | Return SHA-1 checksum of a string.                              |
| [Details](./aurora_sha1hashfile.md)          | _string_ **Aurora.Sha1HashFile** _(string filePath)_  | Return SHA-1 checksum of a file.                                |
| [Details](./aurora_shutdown.md)              | _void_ **Aurora.Shutdown** _()_                       | Shutdown the console.                                           |

## Content

| Documentation                       | Function Declaration                                                                            | Description                                                 |
| ----------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------- |
| [Details](./content_findcontent.md) | _table_ **Content.FindContent** _(unsigned titleid, [string titleName])_                        | Find entries in content database matching certain criteria. |
| [Details](./content_getinfo.md)     | _table_ **Content.GetInfo** _(unsigned contentId)_                                              | Return entry in content database with given Id.             |
| [Details](./content_isscanning.md)  | _boolean_ **Content.IsScanning** _()_                                                           | Check if a content scan is in progress.                     |
| _TODO_                              | _boolean_ **Content.SetAsset** _(string imagePath, enum assetType, [unsigned screenshotIndex])_ | Set an image for a game's assets.                           |
| _TODO_                              | _boolean_ **Content.SetDescription** _(unsigned contentId, string description)_                 | Set a game's description string.                            |
| _TODO_                              | _boolean_ **Content.SetDeveloper** _(unsigned contentId, string developer)_                     | Set a game's developer string.                              |
| _TODO_                              | _boolean_ **Content.SetPublisher** _(unsigned contentId, string publisher)_                     | Set a game's publisher string.                              |
| _TODO_                              | _boolean_ **Content.SetReleaseDate** _(unsigned contentId, string releaseDate)_                 | Set a game's release date string.                           |
| _TODO_                              | _boolean_ **Content.SetTitle** _(unsigned contentId, string title)_                             | Set a game's title string.                                  |
| [Details](./content_startscan.md)   | _boolean_ **Content.StartScan** _()_                                                            | Start a content scan.                                       |

## Dvd

| Documentation                    | Function Declaration                 | Description                                    |
| -------------------------------- | ------------------------------------ | ---------------------------------------------- |
| [Details](./dvd_closetray.md)    | *boolean* **Dvd.CloseTray** _()_     | Close the DVD tray.                            |
| [Details](./dvd_getmediatype.md) | _unsigned_ **Dvd.GetMediaType** _()_ | Return the media type of disc in the DVD tray. |
| [Details](./dvd_gettraystate.md) | _unsigned_ **Dvd.GetTrayState** _()_ | Return current state of the DVD tray.          |
| [Details](./dvd_opentray.md)     | *boolean* **Dvd.OpenTray** *()*      | Open the DVD tray.                             |

## FileSystem

| Documentation | Function Declaration                                                                                                           | Description                                                        |
| ------------- | ------------------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------ |
| _TODO_        | _boolean_ **FileSystem.CopyDirectory** _(string srcDir, string dstDir, boolean overwrite, [function progressRoutine])_         | Copy a directory from *srcDir* to _dstDir_.                        |
| _TODO_        | _boolean_ **FileSystem.CopyFile** _(string srcFile, string dstFile, boolean overwrite, [function progressRoutine])_            | Copy a file from *srcFile* to _dstFile_.                           |
| _TODO_        | _boolean_ **FileSystem.CreateDirectory** _(string directory)_                                                                  | Create a directory at _directory_.                                 |
| _TODO_        | _boolean_ **FileSystem.DeleteDirectory** _(string directory)_                                                                  | Delete the directory at _directory_.                               |
| _TODO_        | _boolean_ **FileSystem.DeleteFile** _(string file)_                                                                            | Delete the file at _file_.                                         |
| _TODO_        | _boolean_ **FileSystem.FileExists** _(string path)_                                                                            | Determine if  a file exists at _path_.                             |
| _TODO_        | _unsigned_ **FileSystem.GetAttributes** _(string path)_                                                                        | Get the attributes of a file or directory at _path_.               |
| _TODO_        | _table_ **FileSystem.GetDirectories** _(string path)_                                                                          | Get a table of directories within _path_.                          |
| _TODO_        | _table_ **FileSystem.GetDrives** _([boolean contentDrivesOnly])_                                                               | Get a table of mounted drives.                                     |
| _TODO_        | _unsigned_ **FileSystem.GetFileSize** _(string path)_                                                                          | Get the size of the file at _path_.                                |
| _TODO_        | _table_ **FileSystem.GetFiles** _(string path)_                                                                                | Get a table of files within _path_.                                |
| _TODO_        | _table_ **FileSystem.GetFilesAndDirectories** _(string path)_                                                                  | Get a table of files and directories within _path_.                |
| _TODO_        | *number* **FileSystem.GetPartitionFreeSpace** _(string driveName)_                                                             |                                                                    |
| _TODO_        | _number_ **FileSystem.GetPartitionSize** _(string driveName)_                                                                  |                                                                    |
| _TODO_        | *number* **FileSystem.GetPartitionUsedSpace** _(string driveName)_                                                             |                                                                    |
| _TODO_        | _boolean_ **FileSystem.InstallTitleFromDisc** _(string virtualTargetPath, bool createContentDirs, [function progressRoutine])_ | Install the game in the DVD drive in Games On Demand (GOD) format. |
| _TODO_        | _boolean_ **FileSystem.MoveDirectory** _(string srcDir, string dstDir, boolean overwrite, [function progressRoutine])_         | Move a directory from *srcDir* to _dstDir_.                        |
| _TODO_        | _boolean_ **FileSystem.MoveFile** _(string srcFile, string dstFile, boolean overwrite, [function progressRoutine])_            | Move a file from *srcFile* to _dstFile_.                           |
| _TODO_        | _string_ **Filesystem.ReadFile** _(string srcFile)_                                                                            | Return the contents of *srcFile* as a string.                      |
| _TODO_        | _boolean_ **FileSystem.Rename** _(string original, string new)_                                                                | Rename a path from *original* to _new_.                            |
| _TODO_        | _boolean_ **FileSystem.WriteFile** _(string srcFile, string buffer)_                                                           | Write the value of *buffer* into a file at _srcFile_.              |

## GizmoUI

| Documentation | Function Declaration                       | Description |
| ------------- | ------------------------------------------ | ----------- |
| _TODO_        | _userdata_ **GizmoUI.CreateInstance** _()_ |             |

## Http

| Documentation | Function Declaration                                                                                        | Description                                                                                               |
| ------------- | ----------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| _TODO_        | _table_ **Http.Get** _(string url, [string relativeFilePath])_                                              | Perform a GET request to _url_.                                                                           |
| _TODO_        | _table_ **Http.GetEx** _(string url, function progressRoutine, [string relativeFilePath])_                  |                                                                                                           |
| _TODO_        | _table_ **Http.Post** _(string url, table postvars, [string relativeFilePath])_                             | Perform a POST request to _url_.                                                                          |
| _TODO_        | _table_ **Http.PostEx** _(string url, table postvars, function progressRoutine, [string relativeFilePath])_ |                                                                                                           |
| _TODO_        | _string_ **Http.UrlDecode** _(string input)_                                                                | Return the decoded value of the [url encoded](https://en.wikipedia.org/wiki/URL_encoding) *input* string. |
| _TODO_        | _string_ **Http.UrlEncode** _(string input)_                                                                | Return the [url encoded](https://en.wikipedia.org/wiki/URL_encoding) value of the *input* string.         |

## IniFile

| Documentation | Function Declaration                                        | Description |
| ------------- | ----------------------------------------------------------- | ----------- |
| _TODO_        | _userdata_ **IniFile.LoadFile** _(string relativeFilePath)_ |             |
| _TODO_        | _userdata_ **IniFile.LoadString** _(string fileData)_       |             |

## Kernel

| Documentation | Function Declaration                                                                                     | Description                                                            |
| ------------- | -------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| _TODO_        | _string_ **Kernel.GetCPUKey** _()_                                                                       | Return the console's CPU key.                                          |
| _TODO_        | _unsigned_ **Kernel.GetCPUTempThreshold** _()_                                                           |                                                                        |
| _TODO_        | _string_ **Kernel.GetConsoleId** _()_                                                                    |                                                                        |
| _TODO_        | _unsigned_ **Kernel.GetConsoleTiltState** _()_                                                           | Determine if the console is lying horizontally or standing vertically. |
| _TODO_        | _string_ **Kernel.GetConsoleType** _()_                                                                  |                                                                        |
| _TODO_        | _string_ **Kernel.GetDVDKey** _()_                                                                       | Return the console's DVD key.                                          |
| _TODO_        | _unsigned_ **Kernel.GetEDRAMTempThreshold** _()_                                                         |                                                                        |
| _TODO_        | _unsigned_ **Kernel.GetGPUTempThreshold** _()_                                                           |                                                                        |
| _TODO_        | _string_ **Kernel.GetMotherboardType** _()_                                                              | Return the console's motherboard type.                                 |
| _TODO_        | _string_ **Kernel.GetSerialNumber** _()_                                                                 | Return the console's serial number.                                    |
| _TODO_        | _table_ **Kernel.GetVersion** _()_                                                                       | Return the console's  dashboard version.                               |
| _TODO_        | _void_ **Kernel.RebootSMCRoutine** _()_                                                                  |                                                                        |
| _TODO_        | _boolean_ **Kernel.SetCPUTempThreshold** _(unsigned threshold)_                                          |                                                                        |
| _TODO_        | _boolean_ **Kernel.SetDate** _(unsigned Year, unsigned Month, unsigned Day)_                             |                                                                        |
| _TODO_        | _boolean_ **Kernel.SetEDRAMTempThreshold** _(unsigned threshold)_                                        |                                                                        |
| _TODO_        | _boolean_ **Kernel.SetFanSpeed** _(unsigned fanSpeed)_                                                   |                                                                        |
| _TODO_        | _boolean_ **Kernel.SetGPUTempThreshold** _(unsigned threshold)_                                          |                                                                        |
| _TODO_        | _boolean_ **Kernel.SetTime** _(unsigned Hour, [unsigned Minute, unsigned Second, unsigned Millisecond])_ |                                                                        |

## Profile

| Documentation | Function Declaration                                                               | Description |
| ------------- | ---------------------------------------------------------------------------------- | ----------- |
| _TODO_        | _table_ **Profile.EnumerateProfiles** _()_                                         |             |
| _TODO_        | _unsigned_ **Profile.GetGamerScore** _(unsigned playerIndex)_                      |             |
| _TODO_        | _string_ **Profile.GetGamerTag** _(unsigned playerIndex)_                          |             |
| _TODO_        | _boolean_ **Profile.GetProfilePicture** _(string xuid)_                            |             |
| _TODO_        | _table_ **Profile.GetTitleAchievement** _(unsigned playerIndex, unsigned titleId)_ |             |
| _TODO_        | _string_ **Profile.GetXUID** _(unsigned playerIndex)_                              |             |
| _TODO_        | *boolean* Profile.Login _(unsigned playerIndex, string xuid)_                      |             |
| _TODO_        | _boolean_ **Profile.Logout** _(unsigned playerIndex)_                              |             |

## Script

| Documentation | Function Declaration                                                                                | Description |
| ------------- | --------------------------------------------------------------------------------------------------- | ----------- |
| _TODO_        | _void_ **Script.CreateDirectory** _(string relativePath)_                                           |             |
| _TODO_        | _void_ **Script.FileExists** _(string relativePath)_                                                |             |
| _TODO_        | _string_ **Script.GetBasePath** _()_                                                                |             |
| _TODO_        | _unsigned_ **Script.GetProgress** _()_                                                              |             |
| _TODO_        | _string_ **Script.GetStatus** _()_                                                                  |             |
| _TODO_        | _boolean_ **Script.IsCancelEnabled** _()_                                                           |             |
| _TODO_        | _boolean_ **Script.IsCanceled** _()_                                                                |             |
| _TODO_        | _void_ **Script.RefreshListOnExit** _(boolean refreshList)_                                         |             |
| _TODO_        | _void_ **Script.SetCancelEnable** _(boolean cancelEnabled)_                                         |             |
| _TODO_        | _void_ **Script.SetProgress** _(unsigned val)_                                                      |             |
| _TODO_        | _void_ **Script.SetStatus** _(string text)_                                                         |             |
| _TODO_        | _table_ **Script.ShowFilebrowser** _(string basePath, string selectedItem, [unsigned flags])_       |             |
| _TODO_        | _table_ **Script.ShowKeyboard** _(string title, string prompt, string default, [unsigned flags])_   |             |
| _TODO_        | _table_ **Script.ShowMessageBox** _(string title, string prompt, string button1text, [string ...])_ |             |
| _TODO_        | _void_ **Script.ShowNotification** _(string message, unsigned type)_                                |             |
| _TODO_        | _table_ **Script.ShowPasscode** _(string title, string prompt, unsigned permissionFlag)_            |             |
| _TODO_        | _table_ **Script.ShowPasscodeEx** _(string title, string prompt)_                                   |             |
| _TODO_        | _table_ **Script.ShowPopupList** _(string title, string emptyList, table listContent)_              |             |

## Settings

| Documentation | Function Declaration                                                               | Description |
| ------------- | ---------------------------------------------------------------------------------- | ----------- |
| _TODO_        | _unsigned_ **Settings.AddRSSFeed** _(string url, [bool enabled])_                  |             |
| _TODO_        | _boolean_ **Settings.DeleteRSSFeed** _(unsigned feedId)_                           |             |
| _TODO_        | _table_ **Settings.GetOptions** _(string name, unsigned settingType)_              |             |
| _TODO_        | _table_ **Settings.GetRSSFeedById** _(unsigned feedId)_                            |             |
| _TODO_        | _table_ **Settings.GetRSSFeeds** _([bool enabledOnly])_                            |             |
| _TODO_        | _table_ **Settings.GetSystem** _([string, ...])_                                   |             |
| _TODO_        | _table_ **Settings.GetSystemOptions** _(string name)_                              |             |
| _TODO_        | _table_ **Settings.GetUser** _([string, ...])_                                     |             |
| _TODO_        | _table_ **Settings.GetUserOptions** _(string name)_                                |             |
| _TODO_        | _table_ **Settings.SetSystem** _(string name, string value, [string, string ...])_ |             |
| _TODO_        | _table_ **Settings.SetUser** _(string name, string value, [string, string ...])_   |             |
| _TODO_        | _boolean_ **Settings.UpdateRSSFeed** _(unsigned feedId, string url, bool enabled)_ |             |

## Sql

| Documentation              | Function Declaration                                | Description                                                                                                                                                                                                             |
| -------------------------- | --------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| _TODO_                     | _boolean_ **Sql.Execute** _(string query)_          | Execute the _query_ query string against the `Game:\Data\Databases\content.db` database.<br/>_Note: This function should be used with a query that does not return data, such as a DELETE query._                       |
| *TODO* confirm return type | _boolean_ **Sql.ExecuteFetchRows** _(string query)_ | Execute the _query_ query string against the `Game:\Data\Databases\content.db` database and return the resulting rows.<br/>_Note: This function should be used with a query that returns data, such as a SELECT query._ |

## Thread

| Documentation | Function Declaration                              | Description                                         |
| ------------- | ------------------------------------------------- | --------------------------------------------------- |
| _TODO_        | _void_ **Thread.Sleep** _(unsigned milliseconds)_ | Freeze the console for *milliseconds* milliseconds. |

## ZipFile

| Documentation | Function Declaration                                        | Description |
| ------------- | ----------------------------------------------------------- | ----------- |
| _TODO_        | _userdata_ **ZipFile.OpenFile** _(string relativeFilePath)_ |             |

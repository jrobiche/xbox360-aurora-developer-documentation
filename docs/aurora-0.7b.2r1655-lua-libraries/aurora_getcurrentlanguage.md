## Details

_table_ **Aurora.GetCurrentLanguage** _()_

Get information about the current Aurora language pack.

Script Permissions: None

Return Table Values:

| Key          | Data Type | Description                                                                                                                                                                                               |
| ------------ | --------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| FileName     | String    | _N/A_                                                                                                                                                                                                     |
| IconPath     | String    | _N/A_                                                                                                                                                                                                     |
| Language     | String    | Full name of language.                                                                                                                                                                                    |
| LanguageCode | String    | String formatted as "{language}-{region}". Language code is [ISO 639-1](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) and region code is [ISO 3166-1](https://en.wikipedia.org/wiki/ISO_3166-1). |
| Name         | String    | Name of the language pack.                                                                                                                                                                                |
| Translator   | String    | Persons attributed to translating text in language pack.                                                                                                                                                  |

Example Table:

```
["FileName"]: ""
["IconPath"]: "section://30000EA8,LangIcon"
["Language"]: "English"
["LanguageCode"]: "en-US"
["Name"]: "English [en-US] by Phoenix"
["Translator"]: "Phoenix"
```

## Example Script

See [Aurora Functions Example Script](./example-scripts/ExampleAuroraFunctions/Main.lua) for an example of using this function.

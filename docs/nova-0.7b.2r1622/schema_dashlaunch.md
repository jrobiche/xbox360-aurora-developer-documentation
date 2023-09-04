# Memory Schema

| Property                    | Datatype       | Description                                                                                                      |
| --------------------------- | -------------- | ---------------------------------------------------------------------------------------------------------------- |
| options[`{index}`].id       | integer(\$u32) | Id of Dashlaunch option                                                                                          |
| options[`{index}`].category | string         | Category of Dashlaunch option. Valid values are:<br/>Behavior<br/>Extern<br/>Net<br/>Paths<br/>Plugins<br/>Timer |
| options[`{index}`].name     | string         | Name of Dashlaunch option                                                                                        |
| options[`{index}`].value    | string         | Value of Dashlaunch option                                                                                       |
| version.kernel              | integer(\$u32) | Kernel version of console that Dashlaunch is built for<br/>_Example: 17599_                                      |
| version.number.build        | integer(\$u32) | Build version of Dashlaunch                                                                                      |
| version.number.major        | integer(\$u32) | Major version of Dashlaunch                                                                                      |
| version.number.minor        | integer(\$u32) | Minor version of Dashlaunch                                                                                      |

Media type: `application/json`

Example Content:

```json
{
  "options": [
    {
      "id": 0,
      "category": "Net",
      "name": "pingpatch",
      "value": "true"
    },
    {
      "id": 1,
      "category": "Behavior",
      "name": "contpatch",
      "value": "false"
    },
    {
      "id": 2,
      "category": "Behavior",
      "name": "xblapatch",
      "value": "false"
    },
    {
      "id": 3,
      "category": "Behavior",
      "name": "licpatch",
      "value": "false"
    },
    {
      "id": 4,
      "category": "Behavior",
      "name": "nxemini",
      "value": "true"
    },
    {
      "id": 5,
      "category": "Behavior",
      "name": "dvdexitdash",
      "value": "false"
    },
    {
      "id": 6,
      "category": "Behavior",
      "name": "xblaexitdash",
      "value": "false"
    },
    {
      "id": 7,
      "category": "Behavior",
      "name": "nosysexit",
      "value": "false"
    },
    {
      "id": 8,
      "category": "Behavior",
      "name": "nohud",
      "value": "false"
    },
    {
      "id": 9,
      "category": "Behavior",
      "name": "nohealth",
      "value": "true"
    },
    {
      "id": 10,
      "category": "Behavior",
      "name": "nooobe",
      "value": "true"
    },
    {
      "id": 11,
      "category": "Behavior",
      "name": "autoswap",
      "value": "false"
    },
    {
      "id": 12,
      "category": "Behavior",
      "name": "regionspoof",
      "value": "false"
    },
    {
      "id": 13,
      "category": "Behavior",
      "name": "region",
      "value": "0x7FFF"
    },
    {
      "id": 14,
      "category": "Net",
      "name": "signnotice",
      "value": "false"
    },
    {
      "id": 15,
      "category": "Net",
      "name": "liveblock",
      "value": "true"
    },
    {
      "id": 16,
      "category": "Net",
      "name": "livestrong",
      "value": "true"
    },
    {
      "id": 17,
      "category": "Behavior",
      "name": "autoshut",
      "value": "false"
    },
    {
      "id": 18,
      "category": "Behavior",
      "name": "autooff",
      "value": "false"
    },
    {
      "id": 19,
      "category": "Behavior",
      "name": "shuttemps",
      "value": "false"
    },
    {
      "id": 20,
      "category": "Net",
      "name": "xhttp",
      "value": "true"
    },
    {
      "id": 21,
      "category": "Net",
      "name": "nonetstore",
      "value": "true"
    },
    {
      "id": 22,
      "category": "Behavior",
      "name": "devprof",
      "value": "false"
    },
    {
      "id": 23,
      "category": "Net",
      "name": "devlink",
      "value": "false"
    },
    {
      "id": 24,
      "category": "Timer",
      "name": "hddtimer",
      "value": "210"
    },
    {
      "id": 25,
      "category": "Timer",
      "name": "hddalive",
      "value": "false"
    },
    {
      "id": 26,
      "category": "Timer",
      "name": "temptime",
      "value": "10"
    },
    {
      "id": 27,
      "category": "Timer",
      "name": "tempport",
      "value": "7030"
    },
    {
      "id": 28,
      "category": "Timer",
      "name": "tempbcast",
      "value": "false"
    },
    {
      "id": 29,
      "category": "Behavior",
      "name": "fatalreboot",
      "value": "false"
    },
    {
      "id": 30,
      "category": "Behavior",
      "name": "fatalfreeze",
      "value": "false"
    },
    {
      "id": 31,
      "category": "Behavior",
      "name": "safereboot",
      "value": "true"
    },
    {
      "id": 32,
      "category": "Behavior",
      "name": "exchandler",
      "value": "true"
    },
    {
      "id": 33,
      "category": "Behavior",
      "name": "debugout",
      "value": "true"
    },
    {
      "id": 34,
      "category": "Net",
      "name": "sockpatch",
      "value": "false"
    },
    {
      "id": 35,
      "category": "Behavior",
      "name": "passlaunch",
      "value": "false"
    },
    {
      "id": 36,
      "category": "Net",
      "name": "fakelive",
      "value": "false"
    },
    {
      "id": 37,
      "category": "Net",
      "name": "autofake",
      "value": "false"
    },
    {
      "id": 38,
      "category": "Net",
      "name": "autocont",
      "value": "false"
    },
    {
      "id": 39,
      "category": "Net",
      "name": "autofake0",
      "value": "0x00000000"
    },
    {
      "id": 40,
      "category": "Net",
      "name": "autofake1",
      "value": "0x00000000"
    },
    {
      "id": 41,
      "category": "Net",
      "name": "autofake2",
      "value": "0x00000000"
    },
    {
      "id": 42,
      "category": "Net",
      "name": "autofake3",
      "value": "0x00000000"
    },
    {
      "id": 43,
      "category": "Net",
      "name": "autofake4",
      "value": "0x00000000"
    },
    {
      "id": 44,
      "category": "Net",
      "name": "autofake5",
      "value": "0x00000000"
    },
    {
      "id": 45,
      "category": "Net",
      "name": "autofake6",
      "value": "0x00000000"
    },
    {
      "id": 46,
      "category": "Net",
      "name": "autofake7",
      "value": "0x00000000"
    },
    {
      "id": 47,
      "category": "Net",
      "name": "autofake8",
      "value": "0x00000000"
    },
    {
      "id": 48,
      "category": "Net",
      "name": "autofake9",
      "value": "0x00000000"
    },
    {
      "id": 49,
      "category": "Behavior",
      "name": "noupdater",
      "value": "true"
    },
    {
      "id": 50,
      "category": "Behavior",
      "name": "remotenxe",
      "value": "false"
    },
    {
      "id": 51,
      "category": "Paths",
      "name": "dumpfile",
      "value": ""
    },
    {
      "id": 52,
      "category": "Plugins",
      "name": "plugin1",
      "value": ""
    },
    {
      "id": 53,
      "category": "Plugins",
      "name": "plugin2",
      "value": ""
    },
    {
      "id": 54,
      "category": "Plugins",
      "name": "plugin3",
      "value": ""
    },
    {
      "id": 55,
      "category": "Plugins",
      "name": "plugin4",
      "value": ""
    },
    {
      "id": 56,
      "category": "Plugins",
      "name": "plugin5",
      "value": ""
    },
    {
      "id": 57,
      "category": "Paths",
      "name": "Default",
      "value": "\\Aurora 0.7b.2\\Aurora.xex"
    },
    {
      "id": 58,
      "category": "Paths",
      "name": "BUT_A",
      "value": ""
    },
    {
      "id": 59,
      "category": "Paths",
      "name": "BUT_B",
      "value": ""
    },
    {
      "id": 60,
      "category": "Paths",
      "name": "BUT_X",
      "value": ""
    },
    {
      "id": 61,
      "category": "Paths",
      "name": "BUT_Y",
      "value": ""
    },
    {
      "id": 62,
      "category": "Paths",
      "name": "Start",
      "value": ""
    },
    {
      "id": 63,
      "category": "Paths",
      "name": "Back",
      "value": ""
    },
    {
      "id": 64,
      "category": "Paths",
      "name": "LBump",
      "value": ""
    },
    {
      "id": 65,
      "category": "Paths",
      "name": "LThumb",
      "value": ""
    },
    {
      "id": 66,
      "category": "Paths",
      "name": "RThumb",
      "value": ""
    },
    {
      "id": 67,
      "category": "Paths",
      "name": "configapp",
      "value": ""
    },
    {
      "id": 68,
      "category": "Paths",
      "name": "Guide",
      "value": ""
    },
    {
      "id": 69,
      "category": "Paths",
      "name": "Power",
      "value": ""
    },
    {
      "id": 70,
      "category": "Paths",
      "name": "Fakeanim",
      "value": ""
    },
    {
      "id": 71,
      "category": "Extern",
      "name": "ftpserv",
      "value": "false"
    },
    {
      "id": 72,
      "category": "Extern",
      "name": "ftpport",
      "value": "21"
    },
    {
      "id": 73,
      "category": "Extern",
      "name": "updserv",
      "value": "false"
    },
    {
      "id": 74,
      "category": "Extern",
      "name": "calaunch",
      "value": "false"
    },
    {
      "id": 75,
      "category": "Extern",
      "name": "fahrenheit",
      "value": "false"
    }
  ],
  "version": {
    "kernel": 17559,
    "number": {
      "build": 601,
      "major": 3,
      "minor": 21
    }
  }
}
```

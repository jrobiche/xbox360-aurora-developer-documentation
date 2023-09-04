# Plugin Schema

| Property              | Datatype       | Description                                                                                      |
| --------------------- | -------------- | ------------------------------------------------------------------------------------------------ |
| features.achievements | integer(\$u32) | 0: Plugin supports achievements<br/>1: Plugin does not support achievements                      |
| features.debugger     | integer(\$u32) | 0: Plugin supports debugger<br/>1: Plugin does not support debugger                              |
| features.gamepad      | integer(\$u32) | 0: Plugin supports gamepad<br/>1: Plugin does not support gamepad                                |
| features.httpdaemon   | integer(\$u32) | 0: Plugin supports httpdaemon<br/>1: Plugin does not support httpdaemon                          |
| features.multidisc    | integer(\$u32) | 0: Plugin supports multidisc<br/>1: Plugin does not support multidisc                            |
| features.network      | integer(\$u32) | 0: Plugin supports network<br/>1: Plugin does not support network                                |
| features.systemlink   | integer(\$u32) | 0: Plugin supports systemlink<br/>1: Plugin does not support systemlink                          |
| features.threads      | integer(\$u32) | 0: Plugin supports threads<br/>1: Plugin does not support threads                                |
| features.trainers     | integer(\$u32) | 0: Plugin supports trainers<br/>1: Plugin does not support trainers                              |
| path.launcher         | string         | Path to launcher executable<br/>_Example: \Device\Harddisk0\Partition1\Aurora\Aurora.xex_        |
| path.root             | string         | Path to `Plugins` directory<br/>_Example: \Device\Harddisk0\Partition1\Aurora\Plugins_           |
| path.user             | string         | Path to `UserData` directory<br/>_Example: \Device\Harddisk0\Partition1\Aurora\Plugins\UserData_ |
| path.web              | string         | Path to `WebRoot` directory<br/>_Example: \Device\Harddisk0\Partition1\Aurora\Plugins\WebRoot_   |
| version.api           | integer(\$u32) | API version                                                                                      |
| version.number.build  | integer(\$u32) | Build version of NOVA plugin                                                                     |
| version.number.major  | integer(\$u32) | Major version of NOVA plugin                                                                     |
| version.number.minor  | integer(\$u32) | Minor version of NOVA plugin                                                                     |
| version.number.type   | integer(\$u32) | 1: Alpha<br/>2: Beta</br>3: Release                                                              |

Media type: `application/json`

Example Content:

```json
{
  "features": {
    "achievements": 1,
    "debugger": 1,
    "gamepad": 1,
    "httpdaemon": 1,
    "multidisc": 1,
    "network": 0,
    "systemlink": 1,
    "threads": 1,
    "trainers": 0
  },
  "path": {
    "launcher": "\\Device\\Harddisk0\\Partition1\\Aurora\\Aurora.xex"
    "root": "\\Device\\Harddisk0\\Partition1\\Aurora\\Plugins",
    "user": "\\Device\\Harddisk0\\Partition1\\Aurora\\Plugins\\UserData",
    "web": "\\Device\\Harddisk0\\Partition1\\Aurora\\Plugins\\WebRoot",
  },
  "version": {
    "api": 3,
    "number": {
      "build": 1622,
      "major": 0,
      "minor": 7,
      "type": 2
    }
  }
}
```

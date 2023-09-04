# System Schema

| Property            | Datatype       | Description                                                            |
| ------------------- | -------------- | ---------------------------------------------------------------------- |
| console.motherboard | string         | Xenon<br/>Zephyr<br/>Opus<br/>Falcon<br/>Jasper<br/>Trinity<br/>Corona |
| console.type        | string         | Devkit<br/>Retail                                                      |
| consoleid           | string         | Console's product id                                                   |
| cpukey              | string         | Console's CPU key                                                      |
| dvdkey              | string         | Console's DVD key                                                      |
| serial              | string         | Console's serial number                                                |
| version.build       | integer(\$u32) | Dashboard's build version                                              |
| version.major       | integer(\$u32) | Dashboard's major version                                              |
| version.minor       | integer(\$u32) | Dashboard's minor version                                              |
| version.qfe         | integer(\$u32) | Dashboard's quick-fix engineering version                              |

Media type: `application/json`

Example Content:

```json
{
  "console": {
    "motherboard": "Xenon",
    "type": "Retail"
  },
  "consoleid": "000000000000",
  "cpukey": "00000000000000000000000000000000",
  "dvdkey": "00000000000000000000000000000000",
  "serial": "000000000000",
  "version": {
    "build": 17559,
    "major": 2,
    "minor": 0,
    "qfe": 0
  }
}
```

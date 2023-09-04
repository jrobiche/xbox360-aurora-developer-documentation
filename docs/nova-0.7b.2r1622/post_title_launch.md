# POST /title/launch

Launch an executable.

## Headers

| Name          | Value               | Description                                                                                                                              |
| ------------- | ------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Accept        | text/html           | Client should expect the response body content to be in HTML format.                                                                     |
| Authorization | Bearer {JWT}        | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |
| Content-Type  | multipart/form-data | POST data will be passed as a multipart form.                                                                                            |

## Form Data

| Field | Required/Optional | Data Type      | Description                                                                                                                                                 |
| ----- | ----------------- | -------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| exec  | Required          | string         | Name of executable file.                                                                                                                                    |
| path  | Required          | string         | Directory containing executable file. See `Path Roots` defined below for possible root directories.                                                         |
| type  | Required          | integer(\$i32) | -1: None<br/>0: Xbox 360 Executable (xex)<br/>1: Classic Xbox Executable (xbe)<br/>2: Xbox 360 Container<br/>3: Classic Xbox Container<br/>4: XNA Container |

**Path Roots**

| Drive                 | Path                                        |
| --------------------- | ------------------------------------------- |
| Dvd:\                 | `\Device\Cdrom0`                            |
| Flash:\               | `\SystemRoot`                               |
| HdDvdPlayer:\         | `\Device\HdDvdPlayer`                       |
| HdDvdStorage:\        | `\Device\HdDvdStorage`                      |
| Hdd0:\                | `\Device\Harddisk0\Partition0`              |
| Hdd1:\                | `\Device\Harddisk0\Partition1`              |
| Hddx:\                | `\Device\Harddisk0\SystemPartition`         |
| Memunit0:\            | `\Device\Mu0`                               |
| Memunit1:\            | `\Device\Mu1`                               |
| SysExt:\              | `\sep`                                      |
| Transfercable:\       | `\Device\Transfercable`                     |
| TransfercableXbox1:\  | `\Device\Transfercable\Compatibility\Xbox1` |
| USBMU0:\              | `\Device\Mass0PartitionFile\Storage`        |
| USBMU1:\              | `\Device\Mass1PartitionFile\Storage`        |
| USBMU2:\              | `\Device\Mass2PartitionFile\Storage`        |
| USBMUCache0:\         | `\Device\Mass0PartitionFile\StorageSystem`  |
| USBMUCache1:\         | `\Device\Mass1PartitionFile\StorageSystem`  |
| USBMUCache2:\         | `\Device\Mass2PartitionFile\StorageSystem`  |
| Usb0:\                | `\Device\Mass0`                             |
| Usb1:\                | `\Device\Mass1`                             |
| Usb2:\                | `\Device\Mass2`                             |

On board memory unit can be any of the following

| Drive        | Path                           |
| ------------ | ------------------------------ |
| OnBoardMU:\  | `\Device\BuiltInMuMmc\Storage` |
| OnBoardMU:\  | `\Device\BuiltInMuSfc`         |
| OnBoardMU:\  | `\Device\BuiltInMuUsb\Storage` |

## Example Requests

Launch `Hdd1:\DashLaunch\default.xex`

```
curl \
    --request POST \
    --header "Accept: text/html" \
    --header "Authorization: Bearer ${JWT}" \
    --header "Content-Type: multipart/form-data" \
    --form 'exec=default.xex' \
    --form 'path=\Device\Harddisk0\Partition1\DashLaunch' \
    --form 'type=0' \
    "http://${XBOX_IP}:9999/title/launch"
```

Launch `Hdd1:\Content\0000000000000000\C0DE9999\00080000\C0DE99990F586558`

```
curl \
    --request POST \
    --header "Accept: text/html" \
    --header "Authorization: Bearer ${JWT}" \
    --header "Content-Type: multipart/form-data" \
    --form 'exec=C0DE99990F586558' \
    --form 'path=\Device\Harddisk0\Partition1\Content\0000000000000000\C0DE9999\00080000' \
    --form 'type=2' \
    "http://${XBOX_IP}:9999/title/launch"
```

## Responses

### Code `202`

Description: Title was launched

## Code `401`

Description: Unauthorized

Response Type: [UnauthorizedResponse](./schema_unauthorized_response.md)

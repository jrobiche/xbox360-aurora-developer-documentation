# POST /title/launch

Launch a title's executable.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Parameters

**Query String Parameters**

| Parameter | Required/Optional | Data Type          | Description                                                                                                                                                 |
| --------- | ----------------- | ------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| exec      | Required          | URL Encoded String | Name of executable file.                                                                                                                                    |
| path      | Required          | URL Encoded String | Directory containing executable file. See Path Roots defined below for possible root directories.                                                           |
| type      | Required          | Integer            | -1: None<br/>0: Xbox 360 Executable (xex)<br/>1: Classic Xbox Executable (xbe)<br/>2: Xbox 360 Container<br/>3: Classic Xbox Container<br/>4: XNA Container |

**Path Roots**

```
Dvd: "\Device\Cdrom0"
Flash: "\SystemRoot"
HdDvdPlayer: "\Device\HdDvdPlayer"
HdDvdStorage: "\Device\HdDvdStorage"
Hdd0: "\Device\Harddisk0\Partition0"
Hdd1: "\Device\Harddisk0\Partition1"
Hddx: "\Device\Harddisk0\SystemPartition"
Memunit0: "\Device\Mu0"
Memunit1: "\Device\Mu1"
SysExt: "\sep"
Transfercable: "\Device\Transfercable"
TransfercableXbox1: "\Device\Transfercable\Compatibility\Xbox1"
USBMU0: "\Device\Mass0PartitionFile\Storage"
USBMU1: "\Device\Mass1PartitionFile\Storage"
USBMU2: "\Device\Mass2PartitionFile\Storage"
USBMUCache0: "\Device\Mass0PartitionFile\StorageSystem"
USBMUCache1: "\Device\Mass1PartitionFile\StorageSystem"
USBMUCache2: "\Device\Mass2PartitionFile\StorageSystem"
Usb0: "\Device\Mass0"
Usb1: "\Device\Mass1"
Usb2: "\Device\Mass2"

On board memory unit can be any of the following
OnBoardMU: "\Device\BuiltInMuMmc\Storage"
OnBoardMU: "\Device\BuiltInMuSfc"
OnBoardMU: "\Device\BuiltInMuUsb\Storage"
```

## Example Request 1

Launch `Hdd1:\DashLaunch\default.xex`

```
curl --request POST --header "Authorization: Bearer ${JWT}" --data 'path=%5CDevice%5CHarddisk0%5CPartition1%5CDashLaunch&exec=default.xex&type=0' "http://${XBOX_IP}:9999/title/launch"
```

## Example Request 2

Launch `Hdd1:\Content\0000000000000000\C0DE9999\00080000\C0DE99990F586558`

```
curl --request POST --header "Authorization: Bearer ${JWT}" --data 'path=%5CDevice%5CHarddisk0%5CPartition1%5CContent%5C0000000000000000%5CC0DE9999%5C00080000&exec=C0DE99990F586558&type=2' "http://${XBOX_IP}:9999/title/launch"
```

## Success Response

**Code** `202 Accepted`

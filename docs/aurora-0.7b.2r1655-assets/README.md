# Aurora 0.7b.2 r1655 Assets Documentation

An asset is a file that supports up to 25 images within a single file: 1 icon, 1 banner, 1 boxart, 1 slot, 1 background, and 20 screenshots.

## File Locations

The assets that Aurora displays are stored within the directories `{AuroraRoot}/Data/GameData/{TitleId}_{ContentId}`

- `AuroraRoot` - The directory containing `Aurora.xex`

- `TitleId` - Title id of the game the assets are for. Value is formatted as a hexidecimal string of length 8 with `0` left padding. For example, if a game's title id is the hexidecimal value `ABCD`, then the value of `TitleId` in the path would be `0000ABCD`

- `ContentId` - The value of the `ContentItems.id` column for this game's entry in the content database located at `{AuroraRoot}/Data/Databases/content.db`. Value is formatted as a hexidecimal string of length 8 with `0` left padding. For example, if a game's content id is the decimal value `30`, then the value of `ContentId` in the path would be `0000001E`

Within each `{AuroraRoot}/Data/GameData/{TitleId}_{ContentId}` directory, there should be 4 asset files and 3 bin files

- `BK{TitleId}.asset` - Contains the background image

- `GC{TitleId}.asset` - Contains the coverart image

- `GL{TitleId}.asset` - Contains the icon image and the banner image

- `SS{TitleId}.asset` - Contains screenshot images

- `GameAssetInfo.bin` - Response content of a GET request to

      http://catalog.xboxlive.com/Catalog/Catalog.asmx/Query?
      methodName=FindGames
      &Names=Locale&Values={Locale}
      &Names=LegalLocale&Values={LegalLocale}
      &Names=MediaIds&Values=66acd000-77fe-1000-9115-d802{TitleId}
      &Names=Store&Values=1
      &Names=PageSize&Values=100
      &Names=PageNum&Values=1
      &Names=DetailView&Values=5
      &Names=OfferFilterLevel&Values=1
      &Names=UserTypes&Values=2
      &Names=MediaTypes&Values=1
      &Names=MediaTypes&Values=21
      &Names=MediaTypes&Values=23
      &Names=MediaTypes&Values=37
      &Names=MediaTypes&Values=46

- `GameCoverInfo.bin` - JSON list of coverart available on XboxUnity
  Example content:
  _This example has been formated for readability, actual content may be a single line_

  ```json
  [
    {
      "imageid": 2496,
      "titleid": 3235813785,
      "name": "Xexmenu",
      "official": false,
      "filesize": 468840,
      "url": "http://XboxUnity.net/api/boxart/2496",
      "front": "http://XboxUnity.net/api/boxartfront/2496",
      "thumbnail": "http://XboxUnity.net/api/boxartsm/2496",
      "author": "logo000",
      "authorid": 194,
      "uploaddate": "2011-08-21",
      "rating": 3,
      "link": false
    },
    {
      "imageid": 2657,
      "titleid": 3235813785,
      "name": "Xexmenu",
      "official": false,
      "filesize": 383982,
      "url": "http://XboxUnity.net/api/boxart/2657",
      "front": "http://XboxUnity.net/api/boxartfront/2657",
      "thumbnail": "http://XboxUnity.net/api/boxartsm/2657",
      "author": "Blackuser",
      "authorid": 5431,
      "uploaddate": "2011-11-01",
      "rating": 4,
      "link": false
    },
    {
      "imageid": 5073,
      "titleid": 3235813785,
      "name": "Xexmenu",
      "official": true,
      "filesize": 415295,
      "url": "http://XboxUnity.net/api/boxart/5073",
      "front": "http://XboxUnity.net/api/boxartfront/5073",
      "thumbnail": "http://XboxUnity.net/api/boxartsm/5073",
      "author": "sofien",
      "authorid": 83720,
      "uploaddate": "2013-05-13",
      "rating": 5,
      "link": false
    }
  ]
  ```

- `GameOfferInfo.bin` - Response content of a GET request to

      http://catalog.xboxlive.com/Catalog/Catalog.asmx/Query?
      methodName=FindGameOffers
      &Names=Locale&Values={Locale}
      &Names=LegalLocale&Values={LegalLocale}
      &Names=MediaIds&Values=66acd000-77fe-1000-9115-d802{TitleId}
      &Names=Store&Values=1
      &Names=PageSize&Values=100
      &Names=PageNum&Values=1
      &Names=DetailView&Values=5
      &Names=UserTypes&Values=2
      &Names=MediaTypes&Values=1
      &Names=MediaTypes&Values=21
      &Names=MediaTypes&Values=23
      &Names=MediaTypes&Values=37
      &Names=MediaTypes&Values=46

## File Format

### Structures

#### Asset

| Name      | Offset | Length     | Data Type                   | Value      | Description                                    |
| --------- | ------ | ---------- | --------------------------- | ---------- | ---------------------------------------------- |
| header    | 0x0    | 2048       | [AssetHeader](#assetheader) | _variable_ | Information for interpreting `Asset.imageData` |
| imageData | 0x800  | _variable_ | byte[]                      | _variable_ | RGBA data for images in asset                  |

#### AssetHeader

| Name            | Offset | Length | Data Type                             | Value                 | Description                                                                                                                                            |
| --------------- | ------ | ------ | ------------------------------------- | --------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| magic           | 0x0    | 4      | char[4]<br/>uint32                    | 'RXEA'<br/>0x52584541 | Magic bytes                                                                                                                                            |
| version         | 0x4    | 4      | uint32                                | 1                     |                                                                                                                                                        |
| imageDataLength | 0x8    | 4      | uint32                                | _variable_            | Length of `Asset.imageData`<br/><br/>This value should equal the number of bytes in the file minus 2048 (the length of an [AssetHeader](#assetheader)) |
| assetTypesFlag  | 0xC    | 4      | uint32                                | _variable_            | A bitwise flag containing the [AssetType](#assettype-values)'s of images in this asset                                                                 |
| screenshotCount | 0x10   | 4      | uint32                                | _variable_            | Number of images in this asset that are screenshots                                                                                                    |
| assetPacks      | 0x14   | 1600   | [AssetPackEntry](#assetpackentry)[25] | _variable_            | Array of 25 [AssetPackEntry](#assetpackentry)'s                                                                                                        |
| padding         | 0x654  | 428    | byte[]                                | 0                     | Zero padding so that the offset of `Asset.imageData`will be a multiple of 2048                                                                         |

#### AssetPackEntry

| Name            | Offset                             | Length | Data Type                                         | Value      | Description                                                                                                                                                                                           |
| --------------- | ---------------------------------- | ------ | ------------------------------------------------- | ---------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| imageDataIndex  | assetPackEntryIndex \* 0x40 + 0x14 | 4      | uint32                                            | _variable_ | The index of `Asset.imageData` where the texture's image data begins<br/><br/>The offset for this texture's image data will equal this value plus 2048 (the length of an [AssetHeader](#assetheader)) |
| imageDataLength | assetPackEntryIndex \* 0x40 + 0x18 | 4      | uint32                                            | _variable_ | Length of the texture's image data                                                                                                                                                                    |
| extendedInfo    | assetPackEntryIndex \* 0x40 + 0x1C | 4      | uint32                                            | _variable_ | Value is either 0 or pointer to random memory address<br/><br/>When reading an asset file, this value can be ignored<br/><br/>When creating an asset file, this value can be 0                        |
| textureHeader   | assetPackEntryIndex \* 0x40 + 0x20 | 52     | [AssetPackTextureHeader](#assetpacktextureheader) | _variable_ |                                                                                                                                                                                                       |

#### AssetPackTextureHeader

| Name            | Offset                             | Length | DataType                            | Value      | Description |
| --------------- | ---------------------------------- | ------ | ----------------------------------- | ---------- | ----------- |
| common          | assetPackEntryIndex \* 0x40 + 0x20 | 4      | uint32                              | 3          |             |
| referenceCount  | assetPackEntryIndex \* 0x40 + 0x24 | 4      | uint32                              | 0          |             |
| fence           | assetPackEntryIndex \* 0x40 + 0x28 | 4      | uint32                              | 0          |             |
| readFence       | assetPackEntryIndex \* 0x40 + 0x2C | 4      | uint32                              | 0          |             |
| identifier      | assetPackEntryIndex \* 0x40 + 0x30 | 4      | uint32                              | 0          |             |
| baseFlush       | assetPackEntryIndex \* 0x40 + 0x34 | 4      | uint32                              | 0xFFFF0000 |             |
| mipFlush        | assetPackEntryIndex \* 0x40 + 0x38 | 4      | uint32                              | 0xFFFF0000 |             |
| gpuTextureFetch | assetPackEntryIndex \* 0x40 + 0x3C | 24     | [GPUTextureFetch](#gputexturefetch) | _variable_ |             |

#### GPUTextureFetch

| Name      | Offset                             | Length | DataType                                                                                                                                                                                                            | Value      | Description                                                     |
| --------- | ---------------------------------- | ------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- | --------------------------------------------------------------- |
| constant0 | assetPackEntryIndex \* 0x40 + 0x3C | 4      | [GPUTextureFetchConstant0](#gputexturefetchconstant0)                                                                                                                                                               | _variable_ |                                                                 |
| constant1 | assetPackEntryIndex \* 0x40 + 0x40 | 4      | [GPUTextureFetchConstant1](#gputexturefetchconstant1)                                                                                                                                                               | _variable_ |                                                                 |
| constant2 | assetPackEntryIndex \* 0x40 + 0x44 | 4      | [GPUTextureSize1D](#gputexturesize1d) \| [GPUTextureSize2D](#gputexturesize2d) \| [GPUTextureSize3D](#gputexturesize3d) \| [GPUTextureSizeCube](#gputexturesizecube) \| [GPUTextureSizeStack](#gputexturesizestack) | _variable_ | Image dimensions<br/><br/>See table below to determine DataType |
| constant3 | assetPackEntryIndex \* 0x40 + 0x48 | 4      | [GPUTextureFetchConstant3](#gputexturefetchconstant3)                                                                                                                                                               | _variable_ |                                                                 |
| constant4 | assetPackEntryIndex \* 0x40 + 0x4C | 4      | [GPUTextureFetchConstant4](#gputexturefetchconstant4)                                                                                                                                                               | _variable_ |                                                                 |
| constant5 | assetPackEntryIndex \* 0x50 + 0x40 | 4      | [GPUTextureFetchConstant5](#gputexturefetchconstant5)                                                                                                                                                               | _variable_ |                                                                 |

Use the following table to determine the DataType of the `constant2` property of [GPUTextureFetch](#gputexturefetch). The **Stacked** column refers to the `stacked` property of [GPUTextureFetchConstant1](#gputexturefetchconstant1) and the **Dimension** column refers to the `dimension` property of [GPUTextureFetchConstant5](#gputexturefetchconstant5).

| Stacked | Dimension | DataType                                    |
| ------- | --------- | ------------------------------------------- |
| 0       | 0         | [GPUTextureSize1D](#gputexturesize1d)       |
| 0       | 1         | [GPUTextureSize2D](#gputexturesize2d)       |
| 0       | 2         | [GPUTextureSize3D](#gputexturesize3d)       |
| 0       | 3         | [GPUTextureSizeCube](#gputexturesizecube)   |
| 1       | 0         | Invalid                                     |
| 1       | 1         | [GPUTextureSizeStack](#gputexturesizestack) |
| 1       | 2         | Invalid                                     |
| 1       | 3         | Invalid                                     |

#### GPUTextureFetchConstant0

| Name                        | Offset                             | Mask       | Right Shift | Bitfield Width | DataType | Value      | Description                                                           |
| --------------------------- | ---------------------------------- | ---------- | ----------- | -------------- | -------- | ---------- | --------------------------------------------------------------------- |
| tiled                       | assetPackEntryIndex \* 0x40 + 0x3C | 0x80000000 | 31          | 1              | boolean  | 0          |                                                                       |
| pitch                       | assetPackEntryIndex \* 0x40 + 0x3C | 0x7FC00000 | 22          | 9              | uint32   | _variable_ | TODO                                                                  |
| unknown0                    | assetPackEntryIndex \* 0x40 + 0x3C | 0x00300000 | 20          | 2              | unit32   | 0          |                                                                       |
| signedRepeatingFractionMode | assetPackEntryIndex \* 0x40 + 0x3C | 0x00080000 | 19          | 1              | uint32   | 0          |                                                                       |
| clampZ                      | assetPackEntryIndex \* 0x40 + 0x3C | 0x00070000 | 16          | 3              | uint32   | 0          |                                                                       |
| clampY                      | assetPackEntryIndex \* 0x40 + 0x3C | 0x0000E000 | 13          | 3              | uint32   | 0          |                                                                       |
| clampX                      | assetPackEntryIndex \* 0x40 + 0x3C | 0x00001C00 | 10          | 3              | uint32   | 0          |                                                                       |
| signW                       | assetPackEntryIndex \* 0x40 + 0x3C | 0x00000300 | 8           | 2              | uint32   | 0          |                                                                       |
| signZ                       | assetPackEntryIndex \* 0x40 + 0x3C | 0x000000C0 | 6           | 2              | uint32   | 0          |                                                                       |
| signY                       | assetPackEntryIndex \* 0x40 + 0x3C | 0x00000030 | 4           | 2              | uint32   | 0          |                                                                       |
| signX                       | assetPackEntryIndex \* 0x40 + 0x3C | 0x0000000C | 2           | 2              | uint32   | 0          |                                                                       |
| fetchConstantType           | assetPackEntryIndex \* 0x40 + 0x3C | 0x00000003 | 0           | 2              | uint32   | 2          | A value of `2` means that the set of fetch constants is for a texture |

#### GPUTextureFetchConstant1

| Name          | Offset                             | Mask       | Right Shift | Bitfield Width | DataType                               | Value      | Description                                                                                                     |
| ------------- | ---------------------------------- | ---------- | ----------- | -------------- | -------------------------------------- | ---------- | --------------------------------------------------------------------------------------------------------------- |
| baseAddress   | assetPackEntryIndex \* 0x40 + 0x40 | 0xFFFFF000 | 12          | 20             | uint32                                 | 0          |                                                                                                                 |
| clampPolicy   | assetPackEntryIndex \* 0x40 + 0x40 | 0x00000800 | 11          | 1              | uint32                                 | 0          |                                                                                                                 |
| stacked       | assetPackEntryIndex \* 0x40 + 0x40 | 0x00000400 | 10          | 1              | boolean                                | 0          | Determines the data type of `constant2` property of [GPUTextureFetch](#gputexturefetch)                         |
| requestSize   | assetPackEntryIndex \* 0x40 + 0x40 | 0x00000300 | 8           | 2              | uint32                                 | 0          |                                                                                                                 |
| endian        | assetPackEntryIndex \* 0x40 + 0x40 | 0x000000C0 | 6           | 2              | [TextureEndian](#textureendian-values) | _variable_ | Endian of the `Asset.imageData` bytes<br/><br/>Asset files created by Aurora use `TextureEndian.ENDIAN_8_IN_16` |
| textureFormat | assetPackEntryIndex \* 0x40 + 0x40 | 0x0000003F | 0           | 6              | [TextureFormat](#textureformat-values) | _variable_ | Format of the `Asset.imageData` bytes<br/><br/>Asset files created by Aurora use `TextureFormat.BC3`            |

#### GPUTextureSize1D

| Name     | Offset                             | Mask       | Right Shift | Bitfield Width | DataType | Value      | Description                                    |
| -------- | ---------------------------------- | ---------- | ----------- | -------------- | -------- | ---------- | ---------------------------------------------- |
| unknown0 | assetPackEntryIndex \* 0x40 + 0x44 | 0xFF000000 | 24          | 8              | uint32   | 0          |                                                |
| width    | assetPackEntryIndex \* 0x40 + 0x44 | 0x00FFFFFF | 0           | 24             | uint32   | _variable_ | One less than the width of the image in pixels |

#### GPUTextureSize2D

| Name     | Offset                             | Mask       | Right Shift | Bitfield Width | DataType | Value      | Description                                     |
| -------- | ---------------------------------- | ---------- | ----------- | -------------- | -------- | ---------- | ----------------------------------------------- |
| unknown0 | assetPackEntryIndex \* 0x40 + 0x44 | 0xFC000000 | 26          | 6              | uint32   | 0          |                                                 |
| height   | assetPackEntryIndex \* 0x40 + 0x44 | 0x03FFE000 | 13          | 13             | uint32   | _variable_ | One less than the height of the image in pixels |
| width    | assetPackEntryIndex \* 0x40 + 0x44 | 0x00001FFF | 0           | 13             | uint32   | _variable_ | One less than the width of the image in pixels  |

#### GPUTextureSize3D

| Name   | Offset                             | Mask       | Right Shift | Bitfield Width | DataType | Value      | Description                                     |
| ------ | ---------------------------------- | ---------- | ----------- | -------------- | -------- | ---------- | ----------------------------------------------- |
| depth  | assetPackEntryIndex \* 0x40 + 0x44 | 0xFFC00000 | 22          | 10             | uint32   | _variable_ |                                                 |
| height | assetPackEntryIndex \* 0x40 + 0x44 | 0x003FF800 | 11          | 11             | uint32   | _variable_ | One less than the height of the image in pixels |
| width  | assetPackEntryIndex \* 0x40 + 0x44 | 0x000007FF | 0           | 11             | uint32   | _variable_ | One less than the width of the image in pixels  |

#### GPUTextureSizeCube

| Name     | Offset                             | Mask       | Right Shift | Bitfield Width | DataType | Value      | Description                                    |
| -------- | ---------------------------------- | ---------- | ----------- | -------------- | -------- | ---------- | ---------------------------------------------- |
| unknown0 | assetPackEntryIndex \* 0x40 + 0x44 | 0xFC000000 | 26          | 6              | uint32   | _variable_ |                                                |
| unknown1 | assetPackEntryIndex \* 0x40 + 0x44 | 0x03FFE000 | 13          | 13             | uint32   | _variable_ |                                                |
| width    | assetPackEntryIndex \* 0x40 + 0x44 | 0x00001FFF | 0           | 13             | uint32   | _variable_ | One less than the width of the image in pixels |

#### GPUTextureSizeStack

| Name   | Offset                             | Mask       | Right Shift | Bitfield Width | DataType | Value      | Description |
| ------ | ---------------------------------- | ---------- | ----------- | -------------- | -------- | ---------- | ----------- |
| depth  | assetPackEntryIndex \* 0x40 + 0x44 | 0xFC000000 | 26          | 6              | uint32   | _variable_ |             |
| height | assetPackEntryIndex \* 0x40 + 0x44 | 0x03FFE000 | 13          | 13             | uint32   | _variable_ |             |
| width  | assetPackEntryIndex \* 0x40 + 0x44 | 0x00001FFF | 0           | 13             | uint32   | _variable_ |             |

#### GPUTextureFetchConstant3

| Name            | Offset                             | Mask       | Right Shift | Bitfield Width | DataType | Value      | Description |
| --------------- | ---------------------------------- | ---------- | ----------- | -------------- | -------- | ---------- | ----------- |
| borderSize      | assetPackEntryIndex \* 0x40 + 0x48 | 0x80000000 | 31          | 1              | uint32   | 0          |             |
| arbitraryFilter | assetPackEntryIndex \* 0x40 + 0x48 | 0x70000000 | 28          | 3              | uint32   | 0          |             |
| anisoFilter     | assetPackEntryIndex \* 0x40 + 0x48 | 0x0E000000 | 25          | 3              | uint32   | 0          |             |
| mipFilter       | assetPackEntryIndex \* 0x40 + 0x48 | 0x01800000 | 23          | 2              | uint32   | 0          |             |
| minFilter       | assetPackEntryIndex \* 0x40 + 0x48 | 0x00600000 | 21          | 2              | uint32   | 0          |             |
| magFilter       | assetPackEntryIndex \* 0x40 + 0x48 | 0x00180000 | 19          | 2              | uint32   | 0          |             |
| expAdjust       | assetPackEntryIndex \* 0x40 + 0x48 | 0x0007E000 | 13          | 6              | uint32   | 0          |             |
| swizzleW        | assetPackEntryIndex \* 0x40 + 0x48 | 0x00001C00 | 10          | 3              | uint32   | 3          |             |
| swizzleZ        | assetPackEntryIndex \* 0x40 + 0x48 | 0x00000380 | 7           | 3              | uint32   | _variable_ | TODO        |
| swizzleY        | assetPackEntryIndex \* 0x40 + 0x48 | 0x00000070 | 4           | 3              | uint32   | 1          |             |
| swizzleX        | assetPackEntryIndex \* 0x40 + 0x48 | 0x0000000E | 1           | 3              | uint32   | _variable_ | TODO        |
| numFormat       | assetPackEntryIndex \* 0x40 + 0x48 | 0x00000001 | 0           | 1              | uint32   | 0          |             |

#### GPUTextureFetchConstant4

| Name           | Offset                             | Mask       | Right Shift | Bitfield Width | DataType | Value | Description |
| -------------- | ---------------------------------- | ---------- | ----------- | -------------- | -------- | ----- | ----------- |
| gradExpAdjustV | assetPackEntryIndex \* 0x40 + 0x4C | 0xF8000000 | 27          | 5              | uint32   | 0     |             |
| gradExpAdjustH | assetPackEntryIndex \* 0x40 + 0x4C | 0x07C00000 | 22          | 5              | uint32   | 0     |             |
| lodBias        | assetPackEntryIndex \* 0x40 + 0x4C | 0x003FF000 | 12          | 10             | uint32   | 0     |             |
| minAnisoWalk   | assetPackEntryIndex \* 0x40 + 0x4C | 0x00000800 | 11          | 1              | uint32   | 0     |             |
| magAnisoWalk   | assetPackEntryIndex \* 0x40 + 0x4C | 0x00000400 | 10          | 1              | uint32   | 0     |             |
| maxMipLevel    | assetPackEntryIndex \* 0x40 + 0x4C | 0x000003C0 | 6           | 4              | uint32   | 0     |             |
| minMipLevel    | assetPackEntryIndex \* 0x40 + 0x4C | 0x0000003C | 2           | 4              | uint32   | 0     |             |
| volMinFilter   | assetPackEntryIndex \* 0x40 + 0x4C | 0x00000002 | 1           | 1              | uint32   | 0     |             |
| volMagFilter   | assetPackEntryIndex \* 0x40 + 0x4C | 0x00000001 | 0           | 1              | uint32   | 0     |             |

#### GPUTextureFetchConstant5

| Name          | Offset                             | Mask       | Right Shift | Bitfield Width | DataType | Value | Description                                                                             |
| ------------- | ---------------------------------- | ---------- | ----------- | -------------- | -------- | ----- | --------------------------------------------------------------------------------------- |
| mipAddress    | assetPackEntryIndex \* 0x50 + 0x40 | 0xFFFFF000 | 12          | 20             | uint32   | 0     |                                                                                         |
| packedMips    | assetPackEntryIndex \* 0x50 + 0x40 | 0x00000800 | 11          | 1              | uint32   | 1     |                                                                                         |
| dimension     | assetPackEntryIndex \* 0x50 + 0x40 | 0x00000600 | 9           | 2              | uint32   | 1     | Determines the data type of `constant2` property of [GPUTextureFetch](#gputexturefetch) |
| anisoBias     | assetPackEntryIndex \* 0x50 + 0x40 | 0x000001E0 | 5           | 4              | uint32   | 0     |                                                                                         |
| triClamp      | assetPackEntryIndex \* 0x50 + 0x40 | 0x00000018 | 3           | 2              | uint32   | 0     |                                                                                         |
| forceBcwToMax | assetPackEntryIndex \* 0x50 + 0x40 | 0x00000004 | 2           | 1              | uint32   | 0     |                                                                                         |
| borderColor   | assetPackEntryIndex \* 0x50 + 0x40 | 0x00000003 | 0           | 2              | uint32   | 0     | 0x80000000                                                                              |

### Enums

#### AssetType Values

| Flag                   | Hex        | Binary                           | Decimal  |
| ---------------------- | ---------- | -------------------------------- | -------- |
| AssetType.ICON         | 0x00000001 | 00000000000000000000000000000001 | 1        |
| AssetType.BANNER       | 0x00000002 | 00000000000000000000000000000010 | 2        |
| AssetType.BOXART       | 0x00000004 | 00000000000000000000000000000100 | 4        |
| AssetType.SLOT         | 0x00000008 | 00000000000000000000000000001000 | 8        |
| AssetType.BACKGROUND   | 0x00000010 | 00000000000000000000000000010000 | 16       |
| AssetType.SCREENSHOT1  | 0x00000020 | 00000000000000000000000000100000 | 32       |
| AssetType.SCREENSHOT2  | 0x00000040 | 00000000000000000000000001000000 | 64       |
| AssetType.SCREENSHOT3  | 0x00000080 | 00000000000000000000000010000000 | 128      |
| AssetType.SCREENSHOT4  | 0x00000100 | 00000000000000000000000100000000 | 256      |
| AssetType.SCREENSHOT5  | 0x00000200 | 00000000000000000000001000000000 | 512      |
| AssetType.SCREENSHOT6  | 0x00000400 | 00000000000000000000010000000000 | 1024     |
| AssetType.SCREENSHOT7  | 0x00000800 | 00000000000000000000100000000000 | 2048     |
| AssetType.SCREENSHOT8  | 0x00001000 | 00000000000000000001000000000000 | 4096     |
| AssetType.SCREENSHOT9  | 0x00002000 | 00000000000000000010000000000000 | 8192     |
| AssetType.SCREENSHOT10 | 0x00004000 | 00000000000000000100000000000000 | 16384    |
| AssetType.SCREENSHOT11 | 0x00008000 | 00000000000000001000000000000000 | 32768    |
| AssetType.SCREENSHOT12 | 0x00010000 | 00000000000000010000000000000000 | 65536    |
| AssetType.SCREENSHOT13 | 0x00020000 | 00000000000000100000000000000000 | 131072   |
| AssetType.SCREENSHOT14 | 0x00040000 | 00000000000001000000000000000000 | 262144   |
| AssetType.SCREENSHOT15 | 0x00080000 | 00000000000010000000000000000000 | 524288   |
| AssetType.SCREENSHOT16 | 0x00100000 | 00000000000100000000000000000000 | 1048576  |
| AssetType.SCREENSHOT17 | 0x00200000 | 00000000001000000000000000000000 | 2097152  |
| AssetType.SCREENSHOT18 | 0x00400000 | 00000000010000000000000000000000 | 4194304  |
| AssetType.SCREENSHOT19 | 0x00800000 | 00000000100000000000000000000000 | 8388608  |
| AssetType.SCREENSHOT20 | 0x01000000 | 00000001000000000000000000000000 | 16777216 |

#### TextureEndian Values

| Flag                          | Hex | Binary | Decimal | Description                                                                                                                                                   |
| ----------------------------- | --- | ------ | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| TextureEndian.ENDIAN_NONE     | 0x0 | 00     | 0       | Data is not modified.                                                                                                                                         |
| TextureEndian.ENDIAN_8_IN_16  | 0x1 | 01     | 1       | Swap the first 8 bits with the last 8 bits in a uint16.<br/><br/>Example: 0xABCD would become 0xCDAB                                                          |
| TextureEndian.ENDIAN_8_IN_32  | 0x2 | 10     | 2       | Swap the first 8 bits with the last 8 bits and swap the second 8 bits with the third 8 bits in a uint32.<br/><br/>Example: 0x0123ABCD would become 0xCDAB2301 |
| TextureEndian.ENDIAN_16_IN_32 | 0x3 | 11     | 3       | Swap the first 16 bits with the last 16 bits in a uint32.<br/><br/>Example: 0x0123ABCD would become 0xABCD0123                                                |

#### TextureFormat Values

_This list is incomplete_

| Flag                | Hex  | Binary | Decimal | Description                                                                                                                                                                                                                                 |
| ------------------- | ---- | ------ | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| TextureFormat.BGRA8 | 0x06 | 000110 | 6       | Image data is not compressed<br/><br/>For each `byte[4]` of `Asset.imageData`, the first byte represents the blue value of the pixel, the second byte represents green, the third byte represents red, and the fourth byte represents alpha |
| TextureFormat.BC3   | 0x14 | 010100 | 20      | Image data is compressed as BC3<br/><br/>See [DXT4 or DXT5](https://en.wikipedia.org/wiki/S3_Texture_Compression#DXT4_and_DXT5)                                                                                                             |

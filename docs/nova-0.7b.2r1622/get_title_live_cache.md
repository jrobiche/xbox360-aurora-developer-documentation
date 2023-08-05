# GET /title/live/cache

Contains xbox live catalog information for running title.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Example Request

```
curl --request GET --header "Authorization: Bearer ${JWT}" "http://${XBOX_IP}:9999/title/live/cache"
```

## Success Response

**Code** `200 OK`

**Content Example**

<!-- prettier-ignore -->
```json
{
  "availabilitydate": "2014-07-01T00:00:00",
  "categories": [
    {
      "categoryid": "0000",
      "name": "Homebrew",
      "system": "0000"
    },
    {
      "categoryid": "0001",
      "name": "Dashboard Replacement",
      "system": "0000"
    }
  ],
  "description": "With Aurora, Phoenix has created a clean and simple dashboard.\nCombining filters and sort orders with CoverFlow allows you to jump into the action right away!\n\n<div class=\"f3 fieldname\">Some of the features Aurora offers:</div>    <ul class=\"f3 features list\">        <li>Boot straight into CoverFlow</li>        <li>Quick Browse title selector for easy access</li>        <li>Filtered and sorted CoverFlow</li>        <li><b>Compatible with Nova and LiNK</b></li>        </ul>",
  "developer": "Phoenix",
  "effectivetitleid": "",
  "fulltitle": "Aurora",
  "gamecapabilities": {
    "offlinecoopplayersmax": "",
    "offlinecoopplayersmin": "",
    "offlinedolbydigital": "",
    "offlinemaxhdtvmodeid": "",
    "offlineplayersmax": "",
    "offlineplayersmin": "",
    "offlinesystemlinkmax": "",
    "offlinesystemlinkmin": "",
    "onlinecontentdownload": "",
    "onlinecoopplayersmax": "",
    "onlinecoopplayersmin": "",
    "onlineleaderboards": "",
    "onlinemultiplayermax": "",
    "onlinemultiplayermin": "",
    "onlinevoice": ""
  },
  "gamereducedtitle": "Aurora",
  "gametitlemediaid": "",
  "images": {
    "background": "getGameFile?path=Media/Assets/Aurora.Assets.Background.png",
    "banner": "getGameFile?path=Media/Assets/Aurora.Assets.Banner.png",
    "boxart": {
      "large": "getGameFile?path=Media/Assets/Aurora.Assets.Boxart.Large.png",
      "small": "getGameFile?path=Media/Assets/Aurora.Assets.Boxart.Small.png"
    },
    "icon": "getGameFile?path=Media/Assets/Aurora.Assets.Icon.png",
    "screenshots": [
      "getGameFile?path=Media/Assets/Aurora.Assets.Screenshot.0001.png",
      "getGameFile?path=Media/Assets/Aurora.Assets.Screenshot.0002.png",
      "getGameFile?path=Media/Assets/Aurora.Assets.Screenshot.0003.png",
      "getGameFile?path=Media/Assets/Aurora.Assets.Screenshot.0004.png",
      "getGameFile?path=Media/Assets/Aurora.Assets.Screenshot.0005.png",
      "getGameFile?path=Media/Assets/Aurora.Assets.Screenshot.0006.png",
      "getGameFile?path=Media/Assets/Aurora.Assets.Screenshot.0007.png",
      "getGameFile?path=Media/Assets/Aurora.Assets.Screenshot.0008.png",
      "getGameFile?path=Media/Assets/Aurora.Assets.Screenshot.0009.png",
      "getGameFile?path=Media/Assets/Aurora.Assets.Screenshot.0010.png"
    ]
  },
  "mediatype": "1",
  "newestofferstartdate": "2014-07-01T00:00:00Z",
  "numberofratings": "0",
  "parsed": true,
  "publisher": "n/a",
  "ratingaggregate": "0",
  "ratingdescriptors": [],
  "ratingid": "40",
  "reduceddescription": "Aurora is a new dashboard for the Xbox 360, created by Phoenix, a small group of developers not unfamiliar to the homebrew scene.",
  "reducedtitle": "Aurora",
  "releasedate": "2014-07-01T00:00:00",
  "titleid": "",
  "totaloffercount": "2",
  "totalsubscriptioncount": "0",
  "video": {
    "aspectratio": "",
    "audioencoding": "",
    "isacquirable": "",
    "resolution": "",
    "url": "",
    "videodefinition": "",
    "videoencoding": ""
  }
}
```

**Content Definitions**

| Key                                                             | Data Type | Description                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| --------------------------------------------------------------- | --------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| availabilitydate                                                | String    | Timestamp that title became available formatted as "YYYY-MM-DDThh:mm:ss".                                                                                                                                                                                                                                                                                                                                                                             |
| categories/{categoryIndex}/categoryid                           | String    | 0000: Homebrew<br/>0001: Dashboard Replacement<br/>0002:<br/>0003:<br/>3001: Other<br/>3002: Action & Adventure<br/>3005: Family<br/>3006: Fighting<br/>3007: Music<br/>3008: Platformer<br/>3009: Racing & Flying<br/>3010: Role Playing<br/>3011: Shooter<br/>3012: Strategy & Simulation<br/>3013: Sports & Recreation<br/>3018: Card & Board<br/>3019: Classics<br/>3020: Educational<br/>3022: Puzzle & Trivia<br/>3028: Kinect<br/>3029: Avatar |
| categories/{categoryIndex}/name                                 | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| categories/{categoryIndex}/system                               | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| description                                                     | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| developer                                                       | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| effectivetitleid                                                | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| fulltitle                                                       | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| gamecapabilitites/offlinecoopplayersmax                         | String    | "": Title is does not support this capability.<br/>"1": Title supports this capability.                                                                                                                                                                                                                                                                                                                                                               |
| gamecapabilitites/offlinecoopplayersmin                         | String    | "": Title is does not support this capability.<br/>"1": Title supports this capability.                                                                                                                                                                                                                                                                                                                                                               |
| gamecapabilitites/offlinedolbydigital                           | String    | "": Title is does not support this capability.<br/>"1": Title supports this capability.                                                                                                                                                                                                                                                                                                                                                               |
| gamecapabilitites/offlinemaxhdtvmodeid                          | String    | "": Title is does not support this capability.<br/>"1": Title supports this capability.                                                                                                                                                                                                                                                                                                                                                               |
| gamecapabilitites/offlineplayersmax                             | String    | "": Title is does not support this capability.<br/>"1": Title supports this capability.                                                                                                                                                                                                                                                                                                                                                               |
| gamecapabilitites/offlineplayersmin                             | String    | "": Title is does not support this capability.<br/>"1": Title supports this capability.                                                                                                                                                                                                                                                                                                                                                               |
| gamecapabilitites/offlinesystemlinkmax                          | String    | "": Title is does not support this capability.<br/>"1": Title supports this capability.                                                                                                                                                                                                                                                                                                                                                               |
| gamecapabilitites/offlinesystemlinkmin                          | String    | "": Title is does not support this capability.<br/>"1": Title supports this capability.                                                                                                                                                                                                                                                                                                                                                               |
| gamecapabilitites/onlinecontentdownload                         | String    | "": Title is does not support this capability.<br/>"1": Title supports this capability.                                                                                                                                                                                                                                                                                                                                                               |
| gamecapabilitites/onlinecoopplayersmax                          | String    | "": Title is does not support this capability.<br/>"1": Title supports this capability.                                                                                                                                                                                                                                                                                                                                                               |
| gamecapabilitites/onlinecoopplayersmin                          | String    | "": Title is does not support this capability.<br/>"1": Title supports this capability.                                                                                                                                                                                                                                                                                                                                                               |
| gamecapabilitites/onlineleaderboards                            | String    | "": Title is does not support this capability.<br/>"1": Title supports this capability.                                                                                                                                                                                                                                                                                                                                                               |
| gamecapabilitites/onlinemultiplayermax                          | String    | "": Title is does not support this capability.<br/>"1": Title supports this capability.                                                                                                                                                                                                                                                                                                                                                               |
| gamecapabilitites/onlinemultiplayermin                          | String    | "": Title is does not support this capability.<br/>"1": Title supports this capability.                                                                                                                                                                                                                                                                                                                                                               |
| gamecapabilitites/onlinevoice                                   | String    | "": Title is does not support this capability.<br/>"1": Title supports this capability.                                                                                                                                                                                                                                                                                                                                                               |
| gamereducedtitle                                                | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| gametitlemediaid                                                | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| images/background                                               | string    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| images/banner                                                   | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| images/boxart/large                                             | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| images/boxart/small                                             | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| images/icon                                                     | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| images/screenshots/{screenshotIndex}                            | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| mediatype                                                       | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| newestofferstartdate                                            | String    | Timestamp that newest offer starts formatted as "YYYY-MM-DDThh:mm:ssZ".                                                                                                                                                                                                                                                                                                                                                                               |
| numberofratings                                                 | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| parsed                                                          | Boolean   |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| publisher                                                       | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ratingaggregate                                                 | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ratingdescriptors/{ratingdescriptorIndex}/ratingdescriptorid    | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ratingdescriptors/{ratingdescriptorIndex}/ratingdescriptorlevel | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| ratingid                                                        | String    | 0: eC (Early Childhood)<br/>10: E (Everyone)<br/>20: E10 (Everyone 10+)<br/>25: RP (Rating Pending)<br/>30: T (Teen)<br/>40: M (Mature)<br/>60: RP (Rating Pending)                                                                                                                                                                                                                                                                                   |
| reduceddescription                                              | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| reducedtitle                                                    | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| releasedate                                                     | String    | Timestamp that title was released formatted as "YYYY-MM-DDThh:mm:ss".                                                                                                                                                                                                                                                                                                                                                                                 |
| titleid                                                         | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| totaloffercount                                                 | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| totalsubscriptioncount                                          | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| video/aspectratio                                               | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| video/audioencoding                                             | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| video/isacquirable                                              | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| video/resolution                                                | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| video/url                                                       | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| video/videodefinition                                           | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| video/videoencoding                                             | String    |                                                                                                                                                                                                                                                                                                                                                                                                                                                       |

## Error Response

**Condition** If the running title does not have a live cache.

**Code**: `404 Not Found`

**Content Example**

```html
<html>
  <head>
    <title>Nova</title>
  </head>
  <body>
    <h1>Resource Not Found</h1>
  </body>
</html>
```

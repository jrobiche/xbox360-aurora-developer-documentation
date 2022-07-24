# POST /title/live/cache

Set xbox live catalog information for running title.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Parameters

**Query String Parameters**

| Parameter | Required/Optional | Data Type          | Description                                                                                                           |
| --------- | ----------------- | ------------------ | --------------------------------------------------------------------------------------------------------------------- |
| liveinfo  | Required          | URL Encoded String | Stringified JSON object. See Success Response of [GET /title/live/cache](./get_title_live_cache.md) for example JSON. |

## Example Request

Set running title's live cache to `{"fulltitle": "Example Full Title", "description": "Example Description"}`

```
curl --request POST --header "Authorization: Bearer ${JWT}" --data 'liveinfo=%7B%22fulltitle%22%3A%22Example%20Full%20Title%22%2C%22description%22%3A%22Example%20Description%22%7D' "http://${XBOX_IP}:9999/title/live/cache"
```

## Success Response

**Code** `201 Created`

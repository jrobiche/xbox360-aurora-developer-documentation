# POST /thread/state

Set state of main thread.

**Auth Required**: Yes

## Headers

| Name          | Value        | Description                                                                                                                              |
| ------------- | ------------ | ---------------------------------------------------------------------------------------------------------------------------------------- |
| Authorization | Bearer {JWT} | Authorization header that includes a valid JWT supplied in a success response to a [POST /authenticate](./post_authenticate.md) request. |

## Parameters

**Query String Parameters**

| Parameter | Required/Optional | Data Type          | Description                              |
| --------- | ----------------- | ------------------ | ---------------------------------------- |
| suspend   | Required          | URL Encoded String | 0: Resume thread.<br/>1: Suspend thread. |

## Example Request 1

Suspend thread

```
curl --request POST --header "Authorization: Bearer ${JWT}" --data "suspend=1" "http://${XBOX_IP}:9999/thread/state"
```

## Example Request 2

Resume thread

```
curl --request POST --header "Authorization: Bearer ${JWT}" --data "suspend=0" "http://${XBOX_IP}:9999/thread/state"
```

## Success Response

**Code** `202 Accepted`

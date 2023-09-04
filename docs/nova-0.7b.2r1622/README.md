# NOVA 0.7b.2 r1622 Documentation

## Table of Contents

- [Introduction](#introduction)
- [OpenAPI Documentation](#openapi-documentation)
- [Markdown Documentation](#markdown-documentation)
  - [Endpoints](#endpoints)
    - [Achievement](#achievement)
    - [Authenticate](#authenticate)
    - [Dashlaunch](#dashlaunch)
    - [Filebrowser](#filebrowser)
    - [Image](#image)
    - [Memory](#memory)
    - [Multidisc](#multidisc)
    - [Plugin](#plugin)
    - [Profile](#profile)
    - [Screen Capture](#screen-capture)
    - [SMC](#smc)
    - [System](#system)
    - [Systemlink](#systemlink)
    - [Temperature](#temperature)
    - [Thread](#thread)
    - [Title](#title)
    - [Update](#update)
  - [Schemas](#schemas)

## Introduction

This documentation is available in two formats: [an OpenAPI definition](#openapi-documentation) and [in markdown](#markdown-documentation).
Both of these formats should be equivalent.
The [markdown documentation](#markdown-documentation) is supplied only for convenience so that the reader does not have to download anything to view the documentation.

## OpenAPI Documentation

An OpenAPI definition of this API can be found in this repository at [swagger-ui/nova-0.7b.2r1622.yaml](./swagger-ui/nova-0.7b.2r1622.yaml). Both the YAML and JSON formats have been included because the Swagger Editor supports YAML but the Swagger UI currently only supports JSON.

For an interactive version of this documentation, you can run an instance of Swagger UI on your console. This can be achieved by completing the following steps:

1. Launch Aurora on your console

2. Using FTP, copy the [swagger-ui](./swagger-ui) directory into `/Game/Plugins/WebRoot` directory on your console

3. The Swagger UI documentation should now be accessible at `http://{YOUR_CONSOLE_IP}:9999/swagger-ui/index.html`

## Markdown Documentation

### Endpoints

#### Achievement

| Documentation                          | Method | Endpoint            | Description                                                                                  |
| -------------------------------------- | ------ | ------------------- | -------------------------------------------------------------------------------------------- |
| [Details](./get_achievement.md)        | GET    | /achievement        | Get information about achievements for the running title.                                    |
| [Details](./get_achievement_player.md) | GET    | /achievement/player | Get information about each player's unlock status for each achievement of the running title. |

#### Authenticate

| Documentation                     | Method | Endpoint      | Description                                                    |
| --------------------------------- | ------ | ------------- | -------------------------------------------------------------- |
| [Details](./post_authenticate.md) | POST   | /authenticate | Request a JWT for use when authenticating subsequent requests. |

#### Dashlaunch

| Documentation                  | Method | Endpoint    | Description                                |
| ------------------------------ | ------ | ----------- | ------------------------------------------ |
| [Details](./get_dashlaunch.md) | GET    | /dashlaunch | Get information about Dashlaunch settings. |

#### Filebrowser

| Documentation                   | Method | Endpoint     | Description                            |
| ------------------------------- | ------ | ------------ | -------------------------------------- |
| [Details](./get_filebrowser.md) | GET    | /filebrowser | View details of files and directories. |

#### Image

| Documentation                           | Method | Endpoint             | Description                                                      |
| --------------------------------------- | ------ | -------------------- | ---------------------------------------------------------------- |
| [Details](./get_image_achievement.md)   | GET    | /image/achievement   | Download achievement tile image in PNG format for running title. |
| [Details](./get_image_profile.md)       | GET    | /image/profile       | Download gamer picture in BMP format of a signed in player.      |
| [Details](./get_image_screencapture.md) | GET    | /image/screencapture | Download a screencapture in BMP format for the running title.    |

#### Memory

| Documentation              | Method | Endpoint | Description                                 |
| -------------------------- | ------ | -------- | ------------------------------------------- |
| [Details](./get_memory.md) | GET    | /memory  | Get the free, used, and total bytes of RAM. |

#### Multidisc

| Documentation                 | Method | Endpoint   | Description                                                               |
| ----------------------------- | ------ | ---------- | ------------------------------------------------------------------------- |
| [Details](./get_multidisc.md) | GET    | /multidisc | Get information about the different discs that make up the running title. |

#### Plugin

| Documentation              | Method | Endpoint | Description                            |
| -------------------------- | ------ | -------- | -------------------------------------- |
| [Details](./get_plugin.md) | GET    | /plugin  | Get information about the NOVA plugin. |

#### Profile

| Documentation               | Method | Endpoint | Description                               |
| --------------------------- | ------ | -------- | ----------------------------------------- |
| [Details](./get_profile.md) | GET    | /profile | Get information about logged in profiles. |

#### Screen Capture

| Documentation                                     | Method | Endpoint                       | Description                                                        |
| ------------------------------------------------- | ------ | ------------------------------ | ------------------------------------------------------------------ |
| [Details](./delete_screencapture.md)              | DELETE | /screencapture                 | Delete a screen capture.                                           |
| [Details](./get_screencapture_meta.md)            | GET    | /screencapture/meta            | Take a screen capture.                                             |
| [Details](./get_screencapture_meta_list.md)       | GET    | /screencapture/meta/list       | Get information about screen captures taken for the running title. |
| [Details](./get_screencapture_meta_list_count.md) | GET    | /screencapture/meta/list/count | Get the number of screen captures available for the running title. |

#### SMC

| Documentation           | Method | Endpoint | Description                                             |
| ----------------------- | ------ | -------- | ------------------------------------------------------- |
| [Details](./get_smc.md) | GET    | /smc     | Get information about the System Management Controller. |

#### System

| Documentation              | Method | Endpoint | Description                        |
| -------------------------- | ------ | -------- | ---------------------------------- |
| [Details](./get_system.md) | GET    | /system  | Get information about the console. |

#### SystemLink

| Documentation                            | Method | Endpoint              | Description                               |
| ---------------------------------------- | ------ | --------------------- | ----------------------------------------- |
| [Details](./get_systemlink.md)           | GET    | /systemlink           | Get information about LiNK configuration. |
| [Details](./get_systemlink_bandwidth.md) | GET    | /systemlink/bandwidth | Get information about LiNK network usage. |

#### Temperature

| Documentation                   | Method | Endpoint     | Description                             |
| ------------------------------- | ------ | ------------ | --------------------------------------- |
| [Details](./get_temperature.md) | GET    | /temperature | Get temperatures of console components. |

#### Thread

| Documentation                     | Method | Endpoint      | Description                    |
| --------------------------------- | ------ | ------------- | ------------------------------ |
| [Details](./get_thread.md)        | GET    | /thread       | Get information about threads. |
| [Details](./get_thread_state.md)  | GET    | /thread/state | Get state of main thread.      |
| [Details](./post_thread_state.md) | POST   | /thread/state | Set state of main thread.      |

#### Title

| Documentation                         | Method | Endpoint          | Description                                                                      |
| ------------------------------------- | ------ | ----------------- | -------------------------------------------------------------------------------- |
| [Details](./get_title.md)             | GET    | /title            | Get information about the running title.                                         |
| [Details](./get_title_file.md)        | GET    | /title/file       | Download a file from the `Game:\` directory.                                     |
| [Details](./post_title_launch.md)     | POST   | /title/launch     | Launch an executable.                                                            |
| [Details](./get_title_live_cache.md)  | GET    | /title/live/cache | Get xbox live catalog information for that has been saved for the running title. |
| [Details](./post_title_live_cache.md) | POST   | /title/live/cache | Set xbox live catalog information for running title.                             |
| N/A                                   | GET    | /title/userdata   | N/A                                                                              |
| N/A                                   | POST   | /title/userdata   | N/A                                                                              |

#### Update

| Documentation                           | Method | Endpoint             | Description                                                                       |
| --------------------------------------- | ------ | -------------------- | --------------------------------------------------------------------------------- |
| [Details](./get_update_notification.md) | GET    | /update/notification | Get information about changes in achievements, profiles, screenshots, and titles. |

### Schemas

| Documentation                                         | Name                       |
| ----------------------------------------------------- | -------------------------- |
| [Details](./schema_achievement.md)                    | Achievement                |
| [Details](./schema_achievement_player.md)             | AchievementPlayer          |
| [Details](./schema_authentication.md)                 | Authentication             |
| [Details](./schema_dashlaunch.md)                     | Dashlaunch                 |
| [Details](./schema_filebrowser_entry.md)              | FilebrowserEntry           |
| [Details](./schema_memory.md)                         | Memory                     |
| [Details](./schema_multidisc.md)                      | Multidisc                  |
| [Details](./schema_plugin.md)                         | Plugin                     |
| [Details](./schema_profile_entry.md)                  | ProfileEntry               |
| [Details](./schema_screencapture_meta.md)             | ScreencaptureMeta          |
| [Details](./schema_screencapature_meta_list_count.md) | ScreencaptureMetaListCount |
| [Details](./schema_smc.md)                            | Smc                        |
| [Details](./schema_system.md)                         | System                     |
| [Details](./schema_systemlink.md)                     | Systemlink                 |
| [Details](./schema_systemlink_bandwidth.md)           | SystemlinkBandwidth        |
| [Details](./schema_temperature.md)                    | Temperature                |
| [Details](./schema_thread.md)                         | Thread                     |
| [Details](./schema_thread_state.md)                   | ThreadState                |
| [Details](./schema_title.md)                          | Title                      |
| [Details](./schema_update_notification.md)            | UpdateNotification         |
| [Details](./schema_unauthorized_response.md)          | UnauthorizedResponse       |
| [Details](./schema_not_found_response.md)             | NotFoundResponse           |

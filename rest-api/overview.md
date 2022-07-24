# Resources

## Achievement

| Documentation                          | Method | Endpoint            | Description                                                                                       |
| -------------------------------------- | ------ | ------------------- | ------------------------------------------------------------------------------------------------- |
| [Details](./get_achievement.md)        | GET    | /achievement        | Contains information about achievements for the running title.                                    |
| [Details](./get_achievement_player.md) | GET    | /achievement/player | Contains information about each player's unlock status of each achievement for the running title. |

## Authenticate

| Documentation                     | Method | Endpoint      | Description                                                    |
| --------------------------------- | ------ | ------------- | -------------------------------------------------------------- |
| [Details](./post_authenticate.md) | POST   | /authenticate | Request a JWT for use when authenticating subsequent requests. |

## DashLaunch

| Documentation                  | Method | Endpoint    | Description                                     |
| ------------------------------ | ------ | ----------- | ----------------------------------------------- |
| [Details](./get_dashlaunch.md) | GET    | /dashlaunch | Contains information about DashLaunch settings. |

## Image

| Documentation                           | Method | Endpoint             | Description                                                      |
| --------------------------------------- | ------ | -------------------- | ---------------------------------------------------------------- |
| [Details](./get_image_achievement.md)   | GET    | /image/achievement   | Download achievement tile image in PNG format for running title. |
| [Details](./get_image_profile.md)       | GET    | /image/profile       | Download gamer picture in BMP format of a signed in player.      |
| [Details](./get_image_screencapture.md) | GET    | /image/screencapture | Download a screencapture in BMP format for the running title.    |

## Memory

| Documentation              | Method | Endpoint | Description                                      |
| -------------------------- | ------ | -------- | ------------------------------------------------ |
| [Details](./get_memory.md) | GET    | /memory  | Contains the free, used, and total bytes of RAM. |

## Multidisc

| Documentation                 | Method | Endpoint   | Description                                                                    |
| ----------------------------- | ------ | ---------- | ------------------------------------------------------------------------------ |
| [Details](./get_multidisc.md) | GET    | /multidisc | Contains information about the different discs that make up the running title. |

## Plugin

| Documentation              | Method | Endpoint | Description                                 |
| -------------------------- | ------ | -------- | ------------------------------------------- |
| [Details](./get_plugin.md) | GET    | /plugin  | Contains information about the NOVA plugin. |

## Profile

| Documentation               | Method | Endpoint | Description                                    |
| --------------------------- | ------ | -------- | ---------------------------------------------- |
| [Details](./get_profile.md) | GET    | /profile | Contains information about logged in profiles. |

## Screen Capture

| Documentation                               | Method | Endpoint                 | Description                                                         |
| ------------------------------------------- | ------ | ------------------------ | ------------------------------------------------------------------- |
| [Details](./delete_screencapture.md)        | DELETE | /screencapture           | Delete a screenshot.                                                |
| [Details](./get_screencapture_meta.md)      | GET    | /screencapture/meta      | Take a screenshot.                                                  |
| [Details](./get_screencapture_meta_list.md) | GET    | /screencapture/meta/list | Contains information about screenshots taken for the running title. |

## SMC

| Documentation           | Method | Endpoint | Description                                                  |
| ----------------------- | ------ | -------- | ------------------------------------------------------------ |
| [Details](./get_smc.md) | GET    | /smc     | Contains information about the System Management Controller. |

## System

| Documentation              | Method | Endpoint | Description                             |
| -------------------------- | ------ | -------- | --------------------------------------- |
| [Details](./get_system.md) | GET    | /system  | Contains information about the console. |

## SystemLink

| Documentation                            | Method | Endpoint              | Description                                           |
| ---------------------------------------- | ------ | --------------------- | ----------------------------------------------------- |
| [Details](./get_systemlink.md)           | GET    | /systemlink           | Contains information about System Link configuration. |
| [Details](./get_systemlink_bandwidth.md) | GET    | /systemlink/bandwidth | Contains network usage for SystemLink.                |

## Temperature

| Documentation                   | Method | Endpoint     | Description                                                   |
| ------------------------------- | ------ | ------------ | ------------------------------------------------------------- |
| [Details](./get_temperature.md) | GET    | /temperature | Contains the current temperatures of CPU, GPU, RAM, and case. |

## Thread

| Documentation                     | Method | Endpoint      | Description                         |
| --------------------------------- | ------ | ------------- | ----------------------------------- |
| [Details](./get_thread.md)        | GET    | /thread       | Contains information about threads. |
| [Details](./get_thread_state.md)  | GET    | /thread/state | Contains state of main thread.      |
| [Details](./post_thread_state.md) | POST   | /thread/state | Set state of main thread.           |

## Title

| Documentation                         | Method | Endpoint          | Description                                               |
| ------------------------------------- | ------ | ----------------- | --------------------------------------------------------- |
| [Details](./get_title.md)             | GET    | /title            | Contains information about the running title.             |
| [Details](./get_title_file.md)        | GET    | /title/file       | Download a file from the `Game:\` directory.              |
| [Details](./post_title_launch.md)     | POST   | /title/launch     | Launch a title's executable.                              |
| [Details](./get_title_live_cache.md)  | GET    | /title/live/cache | Contains xbox live catalog information for running title. |
| [Details](./post_title_live_cache.md) | POST   | /title/live/cache | Set xbox live catalog information for running title.      |
| N/A                                   | GET    | /title/userdata   | N/A                                                       |

## Update

| Documentation                           | Method | Endpoint             | Description                                                                            |
| --------------------------------------- | ------ | -------------------- | -------------------------------------------------------------------------------------- |
| [Details](./get_update_notification.md) | GET    | /update/notification | Contains information about changes in achievements, profiles, screenshots, and titles. |

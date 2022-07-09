---
description: IM SDK 主核心类，负责 IM SDK 的初始化、登录、消息收发，建群退群等功能。
---

# V2TIMManager

API目录

| API                                                                                                                                                        | 描述                                 |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------- |
| [initSDK](https://app.gitbook.com/s/4JQ5PGaljRZgTYPMjVSd/\~/changes/1hZkj2ETXyTDR5QtF00O/api/v2timmanager/initsdk)                                         | 初始化 SDK                            |
| addGroupListener                                                                                                                                           | 添加群组监听器                            |
| [callExperimentalAPI](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/callExperimentalAPI.html)       | 实验性 API 接口                         |
| [checkAbility](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/checkAbility.html)                     | 能力位检测                              |
| [dismissGroup](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/dismissGroup.html)                     | 解散群组                               |
| [getConversationManager](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/getConversationManager.html) | 会话功能入口                             |
| [getFriendshipManager](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/getFriendshipManager.html)     | 关系链功能入口                            |
| [getGroupManager](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/getGroupManager.html)               | 高级群组功能入口                           |
| [getLoginStatus](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/getLoginStatus.html)                 | 获取登录状态                             |
| getLoginUser                                                                                                                                               | 获取当前登录用户的 UserID                   |
| [getMessageManager](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/getMessageManager.html)           | 高级消息功能入口                           |
| [getOfflinePushManager](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/getOfflinePushManager.html)   | 离线推送功能入口                           |
| [getServerTime](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/getServerTime.html)                   | 获取服务器当前时间                          |
| [getSignalingManager](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/getSignalingManager.html)       | 信令入口                               |
| [getUsersInfo](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/getUsersInfo.html)                     | 获取用户资料                             |
| [getUserStatus](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/getUserStatus.html)                   | 获取用户在线状态 注意：4.0.3版本开始支持，web不支持     |
| [getVersion](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/getVersion.html)                         | 获取版本号                              |
| [joinGroup](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/joinGroup.html)                           | 加入群组                               |
| [login](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/login.html)                                   | 登录                                 |
| [logout](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/logout.html)                                 | 登出                                 |
| [printWarning](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/printWarning.html)                     |                                    |
| [quitGroup](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/quitGroup.html)                           | 退出群组                               |
| [removeGroupListener](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/removeGroupListener.html)       | 移除群组监听器                            |
| [setAPNSListener](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/setAPNSListener.html)               | 设置apns监听                           |
| [setGroupListener](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/setGroupListener.html)             | 设置群组监听器                            |
| [setSelfInfo](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/setSelfInfo.html)                       | 修改个人资料                             |
| [setSelfStatus](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/setSelfStatus.html)                   | 设置当前登录用户在线状态 注意：4.0.3版本开始支持，web不支持 |
| [unInitSDK](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_manager/V2TIMManager/unInitSDK.html)                           | 反初始化 SDK                           |

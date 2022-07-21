---
description: IM SDK 主核心类，负责 IM SDK 的初始化、登录、消息收发，建群退群等功能。
---

# V2TIMManager

## V2TIMManager功能介绍

IM SDK 主核心类，负责 IM SDK 的初始化、登录、消息收发，建群退群等功能。

## API目录

| API                                                 | 描述               |
| --------------------------------------------------- | ---------------- |
| [initSDK](initsdk.md)                               | 初始化 SDK          |
| [unInitSDK](uninitsdk.md)                           | 反初始化 SDK         |
| [getVersion](getversion.md)                         | 获取版本号            |
| [getServerTime](getservertime.md)                   | 获取服务器当前时间        |
| [login](login.md)                                   | 用户登录             |
| [logout](logout.md)                                 | 用户登出             |
| [getLoginUser](getloginuser.md)                     | 获取当前登录用户的 UserID |
| [getLoginStatus](getloginstatus.md)                 | 获取登录状态           |
| [addGroupListener](addgrouplistener.md)             | 添加群组监听器          |
| [setGroupListener](setgrouplistener.md)             | 设置群组监听器          |
| [removeGroupListener](removegrouplistener.md)       | 移除群组监听器          |
| [joinGroup](joingroup.md)                           | 加入群组             |
| [quitGroup](quitgroup.md)                           | 退出群组             |
| [dismissGroup](dismissgroup.md)                     | 解散群组             |
| [getUsersInfo](getusersinfo.md)                     | 获取用户资料           |
| [getUserStatus](getuserstatus.md)                   | 获取用户在线状态         |
| [setSelfInfo](setselfinfo.md)                       | 修改个人资料           |
| [setSelfStatus](setselfstatus.md)                   | 设置当前登录用户在线状态     |
| [getConversationManager](getconversationmanager.md) | 会话功能入口           |
| [getFriendshipManager](getfriendshipmanager.md)     | 关系链功能入口          |
| [getGroupManager](getgroupmanager.md)               | 高级群组功能入口         |
| [getMessageManager](getmessagemanager.md)           | 高级消息功能入口         |
| [getOfflinePushManager](getofflinepushmanager.md)   | 离线推送功能入口         |
| [getSignalingManager](getsignalingmanager.md)       | 信令入口             |
| [setAPNSListener](setapnslistener.md)               | 设置苹果系统离线推送专用监听器  |




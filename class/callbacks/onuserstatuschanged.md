---
description: 用户状态变更通知
---

# OnUserStatusChanged

## 回调函数功能描述

用户状态变更通知

* 订阅过的用户发生了状态变更（包括在线状态和自定义状态），会触发该回调
* 在 IM 控制台打开了好友状态通知开关，即使未主动订阅，当好友状态发生变更时，也会触发该回调
* 同一个账号多设备登录，当其中一台设备修改了自定义状态，所有设备都会收到该回调

## 回调函数模版

```dart
OnUserStatusChanged = void Function(
List<V2TimUserStatus> userStatusList
)
```

## 回调函数参数说明

| 参数名称           | 参数类型                                                                       | 参数描述        |
| -------------- | -------------------------------------------------------------------------- | ----------- |
| userStatusList | List< [V2TimUserStatus](../../api/guan-jian-lei/user/v2timuserstatus.md) > | 用户状态变化的用户列表 |

## 使用案例

```dart
    // 1. 从即时通信 IM 控制台获取应用 SDKAppID。
    int sdkAppID = 0;
    // 2. 添加 V2TimSDKListener 的事件监听器，sdkListener 是 V2TimSDKListener 的实现类
    V2TimSDKListener sdkListener = V2TimSDKListener(
      onUserStatusChanged: (List<V2TimUserStatus> userStatusList) {
        //用户状态变更通知
        //userStatusList 用户状态变化的用户列表
        //收到通知的情况：订阅过的用户发生了状态变更（包括在线状态和自定义状态），会触发该回调
        //在 IM 控制台打开了好友状态通知开关，即使未主动订阅，当好友状态发生变更时，也会触发该回调
        //同一个账号多设备登录，当其中一台设备修改了自定义状态，所有设备都会收到该回调
      }
    );
    // 3.初始化SDK
    TencentImSDKPlugin.v2TIMManager.initSDK(
      sdkAppID: sdkAppID, // SDKAppID
      loglevel: LogLevelEnum.V2TIM_LOG_ALL, // 日志登记等级
      listener: sdkListener, // 事件监听器
    );

```

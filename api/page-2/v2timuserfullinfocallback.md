---
description: 登录用户的资料发生了更新更新
---

# V2TimUserFullInfoCallback

## 回调函数功能描述

登录用户的资料发生了更新更新

## 回调函数模版

```dart
V2TimUserFullInfoCallback = void Function(
V2TimUserFullInfo info
)
```

## 回调函数参数说明

| 参数名称 | 参数类型                                  | 参数描述    |
| ---- | ------------------------------------- | ------- |
| info | [V2TimUserFullInfo](broken-reference) | 登录用户的资料 |

## 使用案例

```dart
 // 1. 从即时通信 IM 控制台获取应用 SDKAppID。
    int sdkAppID = 0;
    // 2. 添加 V2TimSDKListener 的事件监听器，sdkListener 是 V2TimSDKListener 的实现类
    V2TimSDKListener sdkListener = V2TimSDKListener(
      onSelfInfoUpdated: (V2TimUserFullInfo info) {
        // 登录用户的资料发生了更新
        // info登录用户的资料
      }
    );
    // 3.初始化SDK
    TencentImSDKPlugin.v2TIMManager.initSDK(
      sdkAppID: sdkAppID, // SDKAppID
      loglevel: LogLevelEnum.V2TIM_LOG_ALL, // 日志登记等级
      listener: sdkListener, // 事件监听器
    );

```


---
description: 无返回参数的回调函数
---

# VoidCallback

## 回调函数功能描述

无返回参数的回调函数

## 回调函数模版

```dart
VoidCallback = void Function()
```

## 回调函数参数说明

{% hint style="info" %}
此回调函数无返回值
{% endhint %}

## 使用案例

```dart
 // 1. 从即时通信 IM 控制台获取应用 SDKAppID。
    int sdkAppID = 0;
    // 2. 添加 V2TimSDKListener 的事件监听器，sdkListener 是 V2TimSDKListener 的实现类
    V2TimSDKListener sdkListener = V2TimSDKListener(
      onConnectSuccess: () {
        // SDK 已经成功连接到腾讯云服务器
      },
      onConnecting: () {
        // SDK 正在连接到腾讯云服务器
      },
      onKickedOffline: () {
        // 当前用户被踢下线，此时可以 UI 提示用户，并再次调用 V2TIMManager 的 login() 函数重新登录。
      },
      onUserSigExpired: () {
        // 在线时票据过期：此时您需要生成新的 userSig 并再次调用 V2TIMManager 的 login() 函数重新登录。
      },
    );
    // 3.初始化SDK
    TencentImSDKPlugin.v2TIMManager.initSDK(
      sdkAppID: sdkAppID, // SDKAppID
      loglevel: LogLevelEnum.V2TIM_LOG_ALL, // 日志登记等级
      listener: sdkListener, // 事件监听器
    );
```


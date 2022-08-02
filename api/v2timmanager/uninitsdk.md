---
description: 反初始化 SDK√
---

# unInitSDK

## 功能介绍

反初始化 SDK

* 普通情况下，如果您的应用生命周期跟 IM SDK 生命周期一致，退出应用前可以不进行反初始化。
* 但有些特殊场景，例如您只在进入特定界面后才[初始化 IM SDK](initsdk.md)，退出界面后不再使用，可以对 IM SDK 进行反初始化。

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回值

```dart
V2TimCallback

{
    code : int
    desc : String
}
```

## 返回值详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |

## 代码示例  &#x20;

```dart
    // 从即时通信 IM 控制台获取应用 SDKAppID。
    int sdkAppID = 0;
    // 添加 V2TimSDKListener 的事件监听器，sdkListener 是 V2TimSDKListener 的实现类
    V2TimSDKListener sdkListener = V2TimSDKListener(
      onConnectFailed: (code, error) {}, // 连接失败的回调函数
      onConnectSuccess: () {}, // 连接成功的回调函数
      onConnecting: () {}, // 正在连接的回调函数
      onKickedOffline: () {}, // 被踢下线的回调函数
      onSelfInfoUpdated: (V2TimUserFullInfo info) {}, // 用户信息更新
      onUserSigExpired: () {}, // userSig过期，相当于踢下线
    );
    // 初始化
    V2TimValueCallback<bool> initSDKRes =
        await TencentImSDKPlugin.v2TIMManager.initSDK(
      sdkAppID: sdkAppID, // SDKAppID
      loglevel: LogLevelEnum.V2TIM_LOG_ALL, // 日志登记等级
      listener: sdkListener, // 事件监听器
    );
    // 在初始化SDK成功之后可调用
    // 调用unInitSDK反初始化SDK
    if (initSDKRes.code == 0) {}
    V2TimCallback unInitSDKRes =
        await TencentImSDKPlugin.v2TIMManager.unInitSDK();
    if (unInitSDKRes.code == 0) {
      // 反初始化SDK成功的逻辑
    }
```

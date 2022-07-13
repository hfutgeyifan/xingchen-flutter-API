---
description: 初始化 SDK
---

# initSDK

## API功能介绍

初始化 SDK

## 参数详解

| 参数名称     | 参数类型                                                | 是否必填 | 描述                                                    |
| -------- | --------------------------------------------------- | ---- | ----------------------------------------------------- |
| sdkAppID | int                                                 | 是    | 应用ID，可在[控制台](https://console.cloud.tencent.com/im)中获取 |
| loglevel | [LogLevelEnum](../enums/loglevelenum.md)            | 是    | 配置信息                                                  |
| listener | [V2TimSDKListener](../../class/v2timsdklistener.md) | 是    | SDK回调                                                 |

## 返回模板

```dart
V2TimValueCallback<bool>

{
    code : int
    desc : String
    data : true/false
}
```

## 返回参数详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |
| data | bool   | 初始化结果                                                          |

## 使用案例  &#x20;

```dart
// 1. 从即时通信 IM 控制台获取应用 SDKAppID。
int sdkAppID = 0;

// 2. 添加 V2TimSDKListener 的事件监听器，sdkListener 是 V2TimSDKListener 的实现类
V2TimSDKListener sdkListener = V2TimSDKListener(
      onConnectFailed: (code, error) {},// 连接失败的回调函数
      onConnectSuccess: () {},// 连接成功的回调函数
      onConnecting: () {},// 正在连接的回调函数
      onKickedOffline: () {},// 被踢下线的回调函数
      onSelfInfoUpdated: (V2TimUserFullInfo info) {},// 用户信息更新
      onUserSigExpired: () {},// userSig过期，相当于踢下线
);

// 3.初始化
TencentImSDKPlugin.v2TIMManager.initSDK(
      sdkAppID: sdkAppID,
      loglevel: LogLevelEnum.V2TIM_LOG_ALL,// 日志登记等级
      listener: sdkListener,
);
```

---
description: 请求失败的回调函数
---

# ErrorCallback

## 功能介绍

请求失败的回调函数

## 回调函数模版

```dart
ErrorCallback = void Function(
int code,
String error
)
```

## 参数详解

| 参数名称  | 参数类型   | 参数描述                                                           |
| ----- | ------ | -------------------------------------------------------------- |
| code  | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| error | String | 请求结果错误描述                                                       |

## 代码示例

```dart
// 1. 从即时通信 IM 控制台获取应用 SDKAppID。
int sdkAppID = 0;

// 2. 添加 V2TimSDKListener 的事件监听器，sdkListener 是 V2TimSDKListener 的实现类
V2TimSDKListener sdkListener = V2TimSDKListener(
      onConnectFailed: (code, error) {
        print(code);//请求结果错误码
        print(error);//请求结果错误描述
      },// 连接失败的回调函数
);

// 3.初始化
TencentImSDKPlugin.v2TIMManager.initSDK(
      sdkAppID: sdkAppID,
      loglevel: LogLevelEnum.V2TIM_LOG_ALL,// 日志登记等级
      listener: sdkListener,
);
```


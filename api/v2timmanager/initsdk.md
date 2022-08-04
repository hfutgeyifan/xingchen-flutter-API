---
description: 初始化 SDK√
---

# initSDK

## 功能介绍

初始化 SDK

初始化 SDK 需要操作以下步骤：

1. 准备 [SDKAppID](https://cloud.tencent.com/login)。
2. 设置 [LogLevelEnum](../enums/loglevelenum.md)。
3. 设置 [V2TimSDKListener](../keyClass/listener/v2timsdklistener.md)。
4. 调用 initSDK 初始化 SDK。
5. 在 Android 平台上，IM SDK 的日志在 4.8.50 版本之前默认存储于 /sdcard/tencenet/imsdklogs/应用包名 目录下，4.8.50 及之后的版本存储于 /sdcard/Android/data/包名/files/log/tencent/imsdk 目录下。

## 参数详解

| 参数名称     | 参数类型                                                              | 是否必填 | 描述                                                    |
| -------- | ----------------------------------------------------------------- | ---- | ----------------------------------------------------- |
| sdkAppID | int                                                               | 是    | 应用ID，可在[控制台](https://console.cloud.tencent.com/im)中获取 |
| loglevel | [LogLevelEnum](../enums/loglevelenum.md)                          | 是    | 打印日志等级                                               |
| listener | [V2TimSDKListener](../keyClass/listener/v2timsdklistener.md) | 是    | SDK监听器                                                |

## 返回值

```dart
V2TimValueCallback<bool>

{
    code : int
    desc : String
    data : bool
}
```

## 返回值详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |
| data | bool   | 初始化结果                                                          |

## 代码示例  &#x20;

```dart
    // 1. 从即时通信 IM 控制台获取应用 SDKAppID。
    int sdkAppID = 0;
    // 2. 添加 V2TimSDKListener 的事件监听器，sdkListener 是 V2TimSDKListener 的实现类
    V2TimSDKListener sdkListener = V2TimSDKListener(
      onConnectFailed: (int code, String error) {
        // 连接失败的回调函数
        // code 错误码
        // error 错误信息
      },
      onConnectSuccess: () {
        // SDK 已经成功连接到腾讯云服务器
      },
      onConnecting: () {
        // SDK 正在连接到腾讯云服务器
      },
      onKickedOffline: () {
        // 当前用户被踢下线，此时可以 UI 提示用户，并再次调用 V2TIMManager 的 login() 函数重新登录。
      },
      onSelfInfoUpdated: (V2TimUserFullInfo info) {
        // 登录用户的资料发生了更新
        // info登录用户的资料
      },
      onUserSigExpired: () {
        // 在线时票据过期：此时您需要生成新的 userSig 并再次调用 V2TIMManager 的 login() 函数重新登录。
      },
      onUserStatusChanged: (List<V2TimUserStatus> userStatusList) {
        //用户状态变更通知
        //userStatusList 用户状态变化的用户列表
        //收到通知的情况：订阅过的用户发生了状态变更（包括在线状态和自定义状态），会触发该回调
        //在 IM 控制台打开了好友状态通知开关，即使未主动订阅，当好友状态发生变更时，也会触发该回调
        //同一个账号多设备登录，当其中一台设备修改了自定义状态，所有设备都会收到该回调
      },
    );
    // 3.初始化SDK
    V2TimValueCallback<bool> initSDKRes =
        await TencentImSDKPlugin.v2TIMManager.initSDK(
      sdkAppID: sdkAppID, // SDKAppID
      loglevel: LogLevelEnum.V2TIM_LOG_ALL, // 日志登记等级
      listener: sdkListener, // 事件监听器
    );
    if (initSDKRes.code == 0) {
      //初始化成功
    }
```

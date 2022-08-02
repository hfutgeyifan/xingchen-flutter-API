---
description: 初始化 SDK√
---

# init

## 功能介绍

初始化 SDK

初始化 SDK 需要操作以下步骤：

1. 准备 [SDKAppID](https://cloud.tencent.com/login)。
2. 设置 [LogLevelEnum](../../api/enums/loglevelenum.md)。
3. 设置 [V2TimSDKListener](../../api/guan-jian-lei/listener/v2timsdklistener.md)。
4. 设置 [onTUIKitCallbackListener](TIMCallback.md)。
5. 调用 initSDK 初始化 SDK。
6. 在 Android 平台上，IM SDK 的日志在 4.8.50 版本之前默认存储于 /sdcard/tencenet/imsdklogs/应用包名 目录下，4.8.50 及之后的版本存储于 /sdcard/Android/data/包名/files/log/tencent/imsdk 目录下。

## 参数详解

| 参数名称     | 参数类型                                                              | 是否必填 | 描述                                                    |
| -------- | ----------------------------------------------------------------- | ---- | ----------------------------------------------------- |
| onTUIKitCallbackListener | Function([TIMCallback](TIMCallback.md) TIMCallback)            | 否    | 该监听用于返回包括：SDK API 错误 / Flutter 报错 / 一些可能需要弹窗提示用户的场景信息。 | 
| sdkAppID | int                                         | 是    | 应用ID，可在[控制台](https://console.cloud.tencent.com/im)中获取 |
| loglevel | [LogLevelEnum](../../api/enums/loglevelenum.md)                          | 是    | 打印日志等级                                 |
| listener | [V2TimSDKListener](../../api/guan-jian-lei/listener/v2timsdklistener.md) | 是    | SDK监听器                                       |
| language | [LanguageEnum](LanguageEnum.md) | 否    | UIKit系统语言                                                |

## 返回值

```dart
Future<bool?>

```

## 返回值详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| bool | bool    | SDK初始化结果 |                                                       |

## 代码示例  &#x20;

```dart
    //使用TIMUIKitCore.getInstance初始化 SDK
    final CoreServicesImpl _coreInstance = TIMUIKitCore.getInstance();
    // sdkListener 是 V2TimSDKListener 的实现类
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
    final isInitSuccess = await _coreInstance.init(
      onTUIKitCallbackListener: (TIMCallback callbackValue) {
        switch (callbackValue.type) {
          case TIMCallbackType.INFO:
            // 自动展示推荐提示语
            Utils.toast(callbackValue.infoRecommendText!);
            break;

          case TIMCallbackType.API_ERROR:
            //打印API的错误, 并展示错误信息.
            print(
                "Error from TUIKit: ${callbackValue.errorMsg}, Code: ${callbackValue.errorCode}");
            if (callbackValue.errorCode == 10004 &&
                callbackValue.errorMsg!.contains("not support @all")) {
              Utils.toast(imt("当前群组不支持@全体成员"));
            } else if (callbackValue.errorCode == 80001 &&
                callbackValue.errorMsg!.contains("not support @all")) {
              Utils.toast(imt("发言中有非法语句"));
            } else {
              Utils.toast(
                  callbackValue.errorMsg ?? callbackValue.errorCode.toString());
            }
            break;

          case TIMCallbackType.FLUTTER_ERROR:
          default:
            // 打印栈错误
            if (callbackValue.catchError != null) {
              Utils.toast(callbackValue.catchError.toString());
            } else {
              print(callbackValue.stackTrace);
            }
        }
      },
      sdkAppID: 0,//应用ID
      loglevel: LogLevelEnum.V2TIM_LOG_DEBUG,//打印日志等级
      listener: sdkListener,//SDK监听器
      language: LanguageEnum.en//UIKit系统语言
    );
    if (isInitSuccess == null || !isInitSuccess) {
      Utils.toast(imt("即时通信 SDK初始化失败"));
      return;
    } else {
      Utils.toast(imt("即时通信 SDK初始化成功"));
    }
```

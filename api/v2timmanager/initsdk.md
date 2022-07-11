---
description: 初始化 SDK
---

# initSDK

## API功能介绍

初始化 SDK

## 参数详解

| 参数名称     | 参数类型                                                                                                                   | 是否必填 | 描述                                                    |
| -------- | ---------------------------------------------------------------------------------------------------------------------- | ---- | ----------------------------------------------------- |
| sdkAppID | int                                                                                                                    | 是    | 应用ID，可在[控制台](https://console.cloud.tencent.com/im)中获取 |
| loglevel | [LogLevelEnum](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/enum\_log\_level\_enum/LogLevelEnum.html) | 是    | 配置信息                                                  |
| listener | [V2TimSDKListener](../../class/v2timsdklistener.md)                                                                    | 是    | SDK回调                                                 |

## 返回模板

```dart
{
    status:true/false
}
```

## 返回参数详解

| 名称     | 数值类型    | 描述      |
| ------ | ------- | ------- |
| status | boolean | 初始化结果状态 |

## 使用案例

```dart
    final isInitSuccess = await _coreInstance.init(
      // 此处可指定显示语言，不传该字段使用系统语言
      // language: LanguageEnum.zh,
      sdkAppID: IMDemoConfig.sdkappid,
      loglevel: LogLevelEnum.V2TIM_LOG_DEBUG,
      listener: V2TimSDKListener(
        onConnectFailed: (code, error) {},
        onConnectSuccess: () {
          Utils.log(imt("即时通信服务连接成功"));
        },
        onConnecting: () {},
        onKickedOffline: () {
          onKickedOffline();
        },
        onSelfInfoUpdated: (info) {
          print(imt("信息已变更"));
          // onSelfInfoUpdated(info);
        },
        onUserSigExpired: () {
          // userSig过期，相当于踢下线
          onKickedOffline();
        },
      ),
    );
    if (isInitSuccess == null || !isInitSuccess) {
      Utils.toast(imt("即时通信 SDK初始化失败"));
    } 
```

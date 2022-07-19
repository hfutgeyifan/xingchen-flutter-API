---
description: 设置离线推送配置信息
---

# setOfflinePushConfig

## 功能介绍

设置离线推送配置信息

## 参数详解

| 参数名称        | 参数类型   | 是否必填 | 描述                                                            |
| ----------- | ------ | ---- | ------------------------------------------------------------- |
| businessID  | double | 是    | businessID 为对应厂商的证书 ID                                        |
| token       | String | 是    | 应合规要求，在用户同意隐私协议登录成功后，分别初始化注册各个厂商推送服务，并在注册结果回调处保存注册成功后的 token， |
| isTPNSToken | bool   | 否    | 传false即可。                                                     |

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
    //设置离线推送配置信息
    V2TimCallback setOfflinePushConfigRes = await TencentImSDKPlugin
        .v2TIMManager
        .getOfflinePushManager()
        .setOfflinePushConfig(
          businessID: 0,//businessID 为对应厂商的证书 ID
          token: "",//应合规要求，在用户同意隐私协议登录成功后，分别初始化注册各个厂商推送服务，并在注册结果回调处保存注册成功后的 token
          isTPNSToken: false);//传false即可。
    if (setOfflinePushConfigRes.code == 0) {
        // 设置成功
        }
    
```

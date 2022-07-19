---
description: 离线推送功能入
---

# getOfflinePushManager

## 功能介绍

离线推送功能入

* 离线推送功能方法在核心类 `TencentImSDKPlugin.v2TIMManager.getOfflinePushManager()`中。

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回值

```dart
V2TIMOfflinePushManager
```

## 返回值详解

| 名称                      | 数值类型                                                   | 描述       |
| ----------------------- | ------------------------------------------------------ | -------- |
| V2TIMOfflinePushManager | [V2TIMOfflinePushManager](../v2timofflinepushmanager/) | 离线推送功能入口 |

## 代码示例  &#x20;

```dart
    // 使用getOfflinePushManager设置离线推送配置信息的案例
    //设置离线推送配置信息
    V2TimCallback setOfflinePushConfigRes = await TencentImSDKPlugin
        .v2TIMManager
        .getOfflinePushManager()
        .setOfflinePushConfig(
          businessID: 0,//businessID 为对应厂商的证书 ID
          token: "",//应合规要求，在用户同意隐私协议登录成功后，分别初始化注册各个厂商推送服务，并在注册结果回调处保存注册成功后的 token
          isTPNSToken: false);
    if (setOfflinePushConfigRes.code == 0) {
        // 设置成功
        }
```

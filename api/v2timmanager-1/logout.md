---
description: 登出
---

# logout

## API功能介绍

登出

* 退出登录，如果切换账号，需要 logout 回调成功或者失败后才能再次 login，否则 login 可能会失败。
* 普通情况下，如果您的应用生命周期跟 IM SDK 生命周期一致，退出应用前可以不登出，直接退出即可。
* 但有些特殊场景，例如您只在进入特定界面后才使用 IM SDK，退出界面后不再使用，此时可以调用`logout` 接口登出 SDK。登出成功后，不会再收到其他人发送的新消息。注意这种情况下，登出成功后还需要调 `unInitSDK` 对 SDK 进行反初始化。
* 如果您希望在应用中实现帐号切换的需求，只需要每次切换帐号时调用 `login` 即可。

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回模板

```dart
V2TimValueCallback

{
    code : int
    desc : String
}
```

## 返回参数详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |

## 使用案例  &#x20;

```dart
// 在用户登陆成功之后可调用
// 调用logout登出当前用户账号
V2TimCallback logoutRes = await TencentImSDKPlugin.v2TIMManager.logout();
if(logoutRes.code == 0){
    // 登出成功的逻辑
}
```

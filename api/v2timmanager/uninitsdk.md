---
description: 反初始化 SDK
---

# unInitSDK

## API功能介绍

反初始化 SDK

* 普通情况下，如果您的应用生命周期跟 IM SDK 生命周期一致，退出应用前可以不进行反初始化。
* 但有些特殊场景，例如您只在进入特定界面后才初始化 IM SDK，退出界面后不再使用，可以对 IM SDK 进行反初始化。

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
// 在初始化SDK成功之后可调用
// 调用unInitSDK反初始化SDK
V2TimCallback res = TencentImSDKPlugin.v2TIMManager.unInitSDK();
if(res.code == 0){
    // 反初始化SDK成功的逻辑
}
```

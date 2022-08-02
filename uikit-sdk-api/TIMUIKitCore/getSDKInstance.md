---
description: 返回 SDK 实例
---

# getInstance

## 功能介绍

返回的V2TIMManager为SDK实例，具体使用方式请参见[Flutter IM SDK 文档](../../api/v2timmanager/README.md)

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回值

```dart
V2TIMManager

```

## 返回值详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| V2TIMManager | [V2TIMManager](../../api/v2timmanager/README.md)    | SDK实例 |

## 代码示例  &#x20;

```dart
    //使用getSDKInstance打印当前登录的用户名称
    final V2TIMManager _sdkInstance = TIMUIKitCore.getSDKInstance();
    print(_sdkInstance.getLoginUser());
```

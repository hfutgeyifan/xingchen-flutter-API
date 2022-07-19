---
description: 设置当前登录用户在线状态
---

# setSelfStatus

## 功能介绍

设置当前登录用户在线状态

{% hint style="info" %}
注意：

4.0.3版本开始支持

web不支持
{% endhint %}

## 参数详解

| 参数名称   | 参数类型   | 是否必填 | 描述        |
| ------ | ------ | ---- | --------- |
| status | String | 是    |  用户在线状态描述 |

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
    //设置当前登录用户在线状态
    V2TimCallback setSelfStatusRes =
        await TencentImSDKPlugin.v2TIMManager.setSelfStatus(status: "");// 用户在线状态描述
    if (setSelfStatusRes.code == 0) {
      //设置成功
    }
```

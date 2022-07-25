---
description: 获取登录状态√
---

# getLoginStatus

## 功能介绍

获取登录状态

* 如果用户已经处于已登录和登录中状态，请勿再频繁调用登录接口登录。

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回值

```dart
V2TimValueCallback<int>

{
    code : int
    desc : String
    data : int// 用户的登录状态 1:已登录 2:登录中 3:无登录
}
```

## 返回值详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |
| data | int    | 用户的登录状态                                                   |

## 代码示例  &#x20;

```dart
    // 在用户登陆成功之后可调用
    // 调用getLoginStatus获取登录成功的用户的状态
    V2TimValueCallback<int> getLoginStatusRes =
        await TencentImSDKPlugin.v2TIMManager.getLoginStatus();
    if (getLoginStatusRes.code == 0) {
      int? status = getLoginStatusRes.data; // getLoginStatusRes.data为用户登录状态值
      if (status == 1) {
        // 已登录
      } else if (status == 2) {
        // 登录中
      } else if (status == 3) {
        // 未登录
      }
    }
```

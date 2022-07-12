---
description: 用户状态信息属性
---

# V2TimUserStatus

## 关键类描述

用户状态信息属性

## 参数

### userID

* 参数类型 : String
* 参数描述：用户 ID

### statusType

* 参数类型 : int
* 参数描述：用户状态

{% hint style="info" %}
0:未知状态

1:在线状态

2:离线状态

3:未登录（如主动调用 logout 接口，或者账号注册后还未登录）
{% endhint %}

### customStatus

* 参数类型 : String
* 参数描述：用户的自定义状态

### toJson

* 参数类型 : Map \<String, dynamic> toJson()
* 参数描述：返回用户状态信息的JSON格式

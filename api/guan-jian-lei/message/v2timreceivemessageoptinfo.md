---
description: 用户接收消息设置的属性
---

# V2TimReceiveMessageOptInfo

## 关键类描述

用户接收消息设置的属性

## 参数

### userID

* 参数类型 : String
* 参数描述：用户 ID

### c2CReceiveMessageOpt

* 参数类型 : int
* 参数描述：消息接收选项用户接收消息设置的属性

{% hint style="info" %}
0:在线正常接收消息，离线时会进行离线推送

1:不会接收到消息，离线不会有推送通知

2:在线正常接收消息，离线不会有推送通知
{% endhint %}

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述：返回用户接收消息设置的属性的JSON格式

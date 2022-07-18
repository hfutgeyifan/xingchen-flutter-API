---
description: 表情消息单体属性
---

# V2TimFaceElem

## 关键类描述

表情消息单体属性

## 参数

### index

* 参数类型 : String
* 参数描述：表情索引，用户自定义

{% hint style="info" %}
1. 表情消息由 TIMFaceElem 定义，SDK 并不提供表情包，如果开发者有表情包，可使用 index 存储表情在表情包中的索引，由用户自定义，或者直接使用 data 存储表情二进制信息以及字符串 key，都由用户自定义，SDK 内部只做透传。
2. index 和 data 只需要传入一个即可，ImSDK 只是透传这两个数据。
{% endhint %}

### data

* 参数类型 : String
* 参数描述：额外数据，用户自定义

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述：返回表情消息单体属性的JSON格式

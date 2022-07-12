---
description: 群组@ 信息
---

# V2TimGroupAtInfo

## 关键类描述

群组@ 信息

## 参数

### seq

* 参数类型 : String
* 参数描述：@ 消息序列号，即带有 “@我” 或者 “@所有人” 标记的消息的序列号

### memberInfoList

* 参数类型 : int
* 参数描述：@ 提醒类型

{% hint style="info" %}
0:@我

1:@所有人

2:@我并@所有人
{% endhint %}

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述：返回群组@ 信息的JSON格式

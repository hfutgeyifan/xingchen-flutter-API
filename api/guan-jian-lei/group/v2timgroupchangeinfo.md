---
description: 群 tips，群变更信息
---

# V2TimGroupChangeInfo

## 关键类描述

群 tips，群变更信息

## 参数

### type

* 参数类型 : int
* 参数描述：变更类型

{% hint style="info" %}
1:群名修改

2:群简介修改

3:群公告修改

4:群头像修改

5:群主变更

6:群自定义字段变更

7:全员禁言字段变更
{% endhint %}

### value

* 参数类型 : String
* 参数描述：根据变更类型表示不同的值,例如 type = 1，value 表示群新的 groupName

### key

* 参数类型 : String
* 参数描述：变更自定义字段的 key 值（type = 6 生效） 因为历史遗留原因，如果只修改了群自定义字段，当前消息不会存漫游和数据库

### boolValue

* 参数类型 : bool
* 参数描述：根据变更类型表示不同的值，当前只有 type = 7 时有效

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述：返回群 tips，群变更信息的JSON格式

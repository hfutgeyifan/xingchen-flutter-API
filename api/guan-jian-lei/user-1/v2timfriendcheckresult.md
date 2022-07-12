---
description: 好友关系链检查结果
---

# V2TimFriendCheckResult

## 关键类描述

好友关系链检查结果

## 参数

### userID

* 参数类型 : String
* 参数描述：用户 ID

### resultCode

* 参数类型 : int
* 参数描述：返回码

### resultInfo

* 参数类型 : String
* 参数描述：返回信息

### resultType

* 参数类型 : int
* 参数描述：与查询用户的关系类型

{% hint style="info" %}
0:不是好友

1:对方在我的好友列表中

2:我在对方的好友列表中

3:互为好友
{% endhint %}

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述：返回好友关系链检查结果的JSON格式

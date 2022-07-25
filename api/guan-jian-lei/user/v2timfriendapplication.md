---
description: 好友申请信息
---

# V2TimFriendApplication

## 关键类描述

好友申请信息

## 参数

### userID

* 参数类型 : String
* 参数描述 : 用户 ID

### nickName

* 参数类型 : String
* 参数描述 : 用户昵称

### faceUrl

* 参数类型 : String
* 参数描述 : 用户头像

### addTime

* 参数类型 : int
* 参数描述 : 添加时间

### addSource

* 参数类型 : String
* 参数描述 : 来源

### addWording

* 参数类型 : String
* 参数描述 : 加好友附言

### type

* 参数类型 : int
* 参数描述 : 好友申请类型

{% hint style="info" %}
0:别人发给我的

1:我发给别人的

2:别人发给我的 和 我发给别人的。仅拉取时有效
{% endhint %}

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述 : 返回好友申请信息的JSON格式

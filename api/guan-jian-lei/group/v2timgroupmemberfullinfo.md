---
description: 群组成员详细信息
---

# V2TimGroupMemberFullInfo

## 关键类描述

群组成员详细信息

## 参数

### userID

* 参数类型 : String
* 参数描述 : 群成员 userID

### role

* 参数类型 : int
* 参数描述 : 群成员角色

{% hint style="info" %}
1:群成员

2:群管理员

3:群主
{% endhint %}

### muteUntil

* 参数类型 : int
* 参数描述 : 群成员禁言结束时间戳

### joinTime

* 参数类型 : int
* 参数描述 : 群成员入群时间，自动生成，不可修改。

### customInfo

* 参数类型 : Map< String, String >
* 参数描述 : 群成员自定义字段

### nickName

* 参数类型 : String
* 参数描述 : 群成员昵称

### nameCard

* 参数类型 : String
* 参数描述 : 群成员名片

### friendRemark

* 参数类型 : String
* 参数描述 : 好友备注

### faceUrl

* 参数类型 : String
* 参数描述 : 用户头像 url

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述 : 返回群组成员详细信息的JSON格式

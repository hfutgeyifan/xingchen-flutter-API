---
description: 用户全量信息属性
---

# V2TimUserFullInfo

## 关键类描述

用户全量信息属性

## 参数

### userID

* 参数类型 : String
* 参数描述 : 用户 ID

### nickName

* 参数类型 : String
* 参数描述 : 用户昵称

### faceUrl

* 参数类型 : String
* 参数描述 : 用户头像 url

### selfSignature

* 参数类型 : String
* 参数描述 : 用户的签名

### gender

* 参数类型 : int
* 参数描述 : 用户的性别

{% hint style="info" %}
1:男

2:女
{% endhint %}

### allowType

* 参数类型 : int
* 参数描述 : 用户的好友验证方式

{% hint style="info" %}
0:允许所有人加我好友

1:不允许所有人加我好友

2:加我好友许我确认
{% endhint %}

### customInfo

* 参数类型 : Map< String, String >
* 参数描述 : 用户的自定义状态

### role

* 参数类型 : int
* 参数描述 : 用户的角色

### level

* 参数类型 : int
* 参数描述 : 用户的等级

### birthday

* 参数类型 : int
* 参数描述 : 用户生日

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述 : 返回用户全量信息的JSON格式

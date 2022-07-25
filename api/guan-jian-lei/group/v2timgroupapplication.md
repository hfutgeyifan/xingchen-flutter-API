---
description: 群申请信息
---

# V2TimGroupApplication

## 关键类描述

群申请信息

## 参数

### groupID

* 参数类型 : String
* 参数描述 : 群组 ID

### fromUser

* 参数类型 : String
* 参数描述 : 请求者 userID

### fromUserNickName

* 参数类型 : String
* 参数描述 : 请求者昵称

### fromUserFaceUrl

* 参数类型 : String
* 参数描述 : 请求者头像

### toUser

* 参数类型 : String
* 参数描述 : 判决者id，有人请求加群:0，邀请其他人加群:被邀请人用户 ID

### addTime

* 参数类型 : int
* 参数描述 : 申请时间

### requestMsg

* 参数类型 : String
* 参数描述 : 申请或邀请附加信息

### handledMsg

* 参数类型 : String
* 参数描述 : 审批信息：同意或拒绝信息

### type

* 参数类型 : int
* 参数描述 : 请求类型

{% hint style="info" %}
0:申请入群

1:邀请入群
{% endhint %}

### handleStatus

* 参数类型 : int
* 参数描述 : 处理标志

{% hint style="info" %}
0:未处理

1:被他人处理

2:自己已处理
{% endhint %}

### handleResult

* 参数类型 : int
* 参数描述 : 处理结果

{% hint style="info" %}
0:拒绝申请

1:同意申请
{% endhint %}

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述 : 返回群申请信息的JSON格式

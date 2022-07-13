---
description: 信令消息属性
---

# V2TimSignalingInfo

## 关键类描述

信令消息属性

## 参数

### inviteID

* 参数类型 : String
* 参数描述：邀请用户 ID

### inviter

* 参数类型 : String
* 参数描述：邀请人 ID

### inviteeList

* 参数类型 : List< dynamic >
* 参数描述：邀请列表

### groupID

* 参数类型 : String
* 参数描述：邀请群组 ID

### data

* 参数类型 : String
* 参数描述：邀请信息

### timeout

* 参数类型 : int
* 参数描述：邀请超时时间

### actionType

* 参数类型 : int
* 参数描述：邀请状态类型

{% hint style="info" %}
1:邀请方发起邀请

2:邀请方取消邀请

3:被邀请方接受邀请

4:被邀请方拒绝邀请

5:邀请超时
{% endhint %}

### isOnlineUserOnly

* 参数类型 : bool
* 参数描述：是否只邀请在线用户，ios不回返回这条

### offlinePushInfo

* 参数类型 : V2TimOfflinePushInfo
* 参数描述：离线推送信息，ios不回返回这条

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述：返回信令消息属性的JSON格式

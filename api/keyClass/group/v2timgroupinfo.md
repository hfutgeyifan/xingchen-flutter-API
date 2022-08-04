---
description: 群资料
---

# V2TimGroupInfo

## 关键类描述

群资料

## 参数

### groupID

* 参数类型 : String
* 参数描述 : 群组 ID

{% hint style="info" %}
自定义群组 ID 必须为可打印 ASCII 字符（0x20-0x7e），最长48个字节，且前缀不能为 @TGS（避免与默认分配的群组 ID 混淆）
{% endhint %}

### groupType

* 参数类型 : String
* 参数描述 : 群类型

### groupName

* 参数类型 : String
* 参数描述 : 群名称

### notification

* 参数类型 : String
* 参数描述 : 群公告

{% hint style="info" %}
群公告最长300字节
{% endhint %}

### introduction

* 参数类型 : String
* 参数描述 : 群简介

{% hint style="info" %}
群简介最长240字节
{% endhint %}

### faceUrl

* 参数类型 : String
* 参数描述 : 群头像

{% hint style="info" %}
群头像 URL 最长100字节
{% endhint %}

### isAllMuted

* 参数类型 : bool
* 参数描述 : 是否全员禁言

### isSupportTopic

* 参数类型 : bool
* 参数描述 : 社群是否支持创建话题

{% hint style="info" %}
只在群类型为 Community 时有效
{% endhint %}

### owner

* 参数类型 : String
* 参数描述 : 群主

### createTime

* 参数类型 : int
* 参数描述 : 群创建时间

### groupAddOpt

* 参数类型 : int
* 参数描述 : 加群是否需要管理员审批，工作群（Work）不能主动加入，不支持此设置项

### lastInfoTime

* 参数类型 : int
* 参数描述 : 群最近一次群资料修改时间

### lastMessageTime

* 参数类型 : int
* 参数描述 : 群最近一次发消息时间

### memberCount

* 参数类型 : int
* 参数描述 : 已加入的群成员数量

### onlineCount

* 参数类型 : int
* 参数描述 : 在线的群成员数量

### role

* 参数类型 : int
* 参数描述 : 当前用户在此群组中的角色，切换角色请调用 [setGroupMemberRole](../../v2timgroupmanager/setgroupmemberrole.md) 接口

### recvOpt

* 参数类型 : int
* 参数描述 : 当前用户在此群组中的消息接收选项,修改群消息接收选项请调用 [setGroupReceiveMessageOpt](../../v2timmessagemanager/setgroupreceivemessageopt.md) 接口

### joinTime

* 参数类型 : int
* 参数描述 : 当前用户在此群中的加入时间，不支持设置，系统自动生成

### customInfo

* 参数类型 : Map< String, String >
* 参数描述 : 设置群自定义字段

{% hint style="info" %}
需要两个步骤：

&#x20;1.在 [控制台](https://console.cloud.tencent.com/im) (功能配置 -> 群自定义字段) 配置群自定义字段的 key 值，Key 为 String 类型，长度不超过 16 字节。&#x20;

2.调用 [setGroupInfo](../../v2timgroupmanager/setgroupinfo.md) 接口设置该字段，长度不超过 512 字节。
{% endhint %}

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述 : 返回群资料的JSON格式

---
description: 会话对象属性
---

# V2TimConversation

## 关键类描述

会话对象属性

## 参数

### conversationID

* 参数类型 : String
* 参数描述 : 会话唯一 ID，如果是 C2C 单聊，组成方式为 c2c\_userID，如果是群聊，组成方式为 group\_groupID

### type

* 参数类型 : int
* 参数描述 : 会话类型

{% hint style="info" %}
1:单聊

2:群聊
{% endhint %}

### userID

* 参数类型 : String
* 参数描述 : 如果会话类型为 C2C 单聊，userID 会存储对方的用户ID，否则为 null

### groupID

* 参数类型 : String
* 参数描述 : 如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 null

### showName

* 参数类型 : String
* 参数描述 : 会话展示名称（群组：群名称 >> 群 ID；C2C：对方好友备注 >> 对方昵称 >> 对方的 userID）

### faceUrl

* 参数类型 : String
* 参数描述 : 会话展示头像（群组：群头像；C2C：对方头像）

### groupType

* 参数类型 : String
* 参数描述 : 如果会话类型为群聊，groupType 为当前群类型，否则为 null

### unreadCount

* 参数类型 : int
* 参数描述 : 话未读消息数量,直播群（AVChatRoom）不支持未读计数，默认为 0

### lastMessage

* 参数类型 : [V2TimMessage](v2timmessage.md)
* 参数描述 : 会话最后一条消息

### draftText

* 参数类型 : String
* 参数描述 : 草稿信息，设置草稿信息请调用 [setConversationDraft](../../v2timconversationmanager/setconversationdraft.md) 接口

### draftTimestamp

* 参数类型 : int
* 参数描述 : 草稿编辑时间，草稿设置的时候自动生成

### isPinned

* 参数类型 : bool
* 参数描述 : 是否置顶

### recvOpt

* 参数类型 : int
* 参数描述 : 消息接收选项

{% hint style="info" %}
0:在线正常接收消息，离线时会进行离线推送

1:不会接收到消息，离线不会有推送通知

2:在线正常接收消息，离线不会有推送通知
{% endhint %}

### groupAtInfoList

* 参数类型 : List< [V2TimGroupAtInfo](../group/v2timgroupatinfo.md) >
* 参数描述 : 群组@信息

### orderkey

* 参数类型 : int
* 参数描述 : 排序字段

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述 : 返回会话对象属性的JSON格式

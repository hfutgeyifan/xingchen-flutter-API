---
description: 话题信息属性
---

# V2TimTopicInfo

## 关键类描述

话题信息属性

## 参数

### topicID

参数类型 : String

参数描述：话题 ID

### topicName

参数类型 : String

参数描述：话题名称

### topicFaceUrl

参数类型 : String

参数描述：话题头像

### introduction

参数类型 : String

参数描述：话题介绍

### notification

参数类型 : String

参数描述：话题公告

### isAllMute

参数类型 : bool

参数描述：话题全员禁言

### selfMuteTime

参数类型 : int

参数描述：当前用户在话题中的禁言时间

### customString

参数类型 : String

参数描述：话题自定义字段

### recvOpt

参数类型 : int

参数描述：话题消息接收选项，修改话题消息接收选项请调用 setGroupReceiveMessageOpt 接口

0:在线正常接收消息，离线时会进行 APNs 推送

1:不会接收到消息，离线不会有推送通知

2:在线正常接收消息，离线不会有推送通知

### draftText

参数类型 : String

参数描述：话题草稿

### unreadCount

参数类型 : int

参数描述：话题消息未读数量

### lastMessage

参数类型 : V2TimMessage

参数描述：话题最新消息

### groupAtInfoList

参数类型 : List\<V2TimGroupAtInfo>

参数描述：话题 at 信息列表


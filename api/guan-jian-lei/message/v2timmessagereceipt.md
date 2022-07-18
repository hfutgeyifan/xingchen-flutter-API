---
description: 消息已读回执
---

# V2TimMessageReceipt

## 关键类描述

消息已读回执

## 参数

### userID

* 参数类型 : String
* 参数描述：发送次消息的用户id

### timestamp

* 参数类型 : int
* 参数描述：C2C 对端用户标记会话已读的时间

### groupID

* 参数类型 : String
* 参数描述：群 ID

### msgID

* 参数类型 : String
* 参数描述：消息 ID

### readCount

* 参数类型 : int
* 参数描述：群消息已读人数

### unreadCount

* 参数类型 : int
* 参数描述：群消息未读人数

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述：返回消息已读回执的JSON格式

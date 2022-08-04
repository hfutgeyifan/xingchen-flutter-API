---
description: 会话列表过滤器
---

# V2TimConversationListFilter

## 关键类描述

会话列表过滤器

## 参数

### conversationType

* 参数类型 : [ConversationType](../../../api/enums/conversationtype.md)
* 参数描述 : 会话类型

### nextSeq

* 参数类型 : int
* 参数描述 : 分页拉取的 seq 如果为 0 表示拉取结束

### count

* 参数类型 : int
* 参数描述 : 拉取数量

### markType

* 参数类型 : [V2TimConversationMarkType](../../enums/v2timconversationmarktype.md)
* 参数描述 : 会话标记类型

### groupName

* 参数类型 : String
* 参数描述 : 群组名称

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述 : 返回会话列表过滤器属性的JSON格式

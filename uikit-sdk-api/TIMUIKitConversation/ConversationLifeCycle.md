---
description: 聊天列表操作时的钩子函数
---

# ConversationLifeCycle

## 关键类描述

聊天列表操作时的钩子函数

## 参数

### shouldDeleteConversation

* 参数类型 : Future< bool > Function(String conversationID)
* 参数描述 : 在将用户删除会话前的钩子函数

### shouldClearHistoricalMessageForConversation

* 参数类型 : Future< bool > Function(String conversationID)
* 参数描述 : 在将用户清除会话历史信息前的钩子函数

### conversationListWillMount

* 参数类型 : Future< List< [V2TimConversation](../../api/guan-jian-lei/message/v2timconversation.md)? > > Function( List< [V2TimConversation](../../api/guan-jian-lei/message/v2timconversation.md)? > conversationList)
* 参数描述 : 在获取到会话列表信息后的钩子函数(uikit初始化会话列表信息时会调用)

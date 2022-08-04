---
description: 聊天消息操作时的钩子函数
---

# ChatLifeCycle

## 关键类描述

聊天消息操作时的钩子函数

## 参数

### newMessageWillMount

* 参数类型 : Future< [V2TimMessage](../../api/keyClass/message/v2timmessage.md)? > Function( [V2TimMessage](../../api/keyClass/message/v2timmessage.md) message)
* 参数描述 : 在将新的消息加入到历史消息列表前的钩子函数

### modifiedMessageWillMount

* 参数类型 : Future< [V2TimMessage](../../api/keyClass/message/v2timmessage.md)? > Function([V2TimMessage](../../api/keyClass/message/v2timmessage.md) message)
* 参数描述 : 在修改后的消息渲染到UI页面前的钩子函数

### messageWillSend

* 参数类型 : Future< [V2TimMessage](../../api/keyClass/message/v2timmessage.md)? > Function([V2TimMessage](../../api/keyClass/message/v2timmessage.md) message)
* 参数描述 : 在消息发送前的钩子函数

### didGetHistoricalMessageList

* 参数类型 : Future< List< [V2TimMessage](../../api/keyClass/message/v2timmessage.md) > > Function( List< [V2TimMessage](../../api/keyClass/message/v2timmessage.md) > messageList)
* 参数描述 : 在将用户获取到最新的消息列表后的钩子函数

### shouldDeleteMessage

* 参数类型 : Future< bool > Function(String msgID)
* 参数描述 : 在将用户删除消息前的钩子函数

### shouldClearHistoricalMessageList

* 参数类型 : Future< bool > Function(String conversationID)
* 参数描述 : 在将用户清除历史消息前的钩子函数

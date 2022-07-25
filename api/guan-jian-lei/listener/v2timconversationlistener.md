---
description: 聊天的监听器回调
---

# V2TimConversationListener

## 关键类描述

聊天的监听器回调

## 参数

### onSyncServerStart

* 参数类型 : [VoidCallback](../../callbacks/voidcallback.md)
* 参数描述 : 同步服务开始的回调函数

### onSyncServerFinish

* 参数类型 : [VoidCallback](../../callbacks/voidcallback.md)
* 参数描述 : 同步服务完成的回调函数

### onSyncServerFailed

* 参数类型 : [VoidCallback](../../callbacks/voidcallback.md)
* 参数描述 : 同步服务失败的回调函数

### onNewConversation

* 参数类型 : [OnNewConversation](../../callbacks/onnewconversation.md)
* 参数描述 : 新会话的回调函数

### onConversationChanged

* 参数类型 : [OnConversationChangedCallback](../../callbacks/onconversationchangedcallback.md)
* 参数描述 : 某些会话的关键信息发生变化（未读计数发生变化、最后一条消息被更新等等）的回调函数

### onTotalUnreadMessageCountChanged

* 参数类型 : [OnTotalUnreadMessageCountChanged](../../callbacks/ontotalunreadmessagecountchanged.md)
* 参数描述 : 会话未读总数改变的回调函数

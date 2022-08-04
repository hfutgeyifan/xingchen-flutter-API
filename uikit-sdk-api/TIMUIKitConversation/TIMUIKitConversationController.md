---
description: 关于会话列表操作的控制器
---

# TIMUIKitConversationController

## 关键类描述

关于会话列表操作的控制器

## 参数

### selectedConversation

* 参数类型 : [V2TimConversation](../../api/keyClass/message/v2timconversation.md)
* 参数描述 : 当前已选中的会话

### conversationList

* 参数类型 : List< [V2TimConversation](../../api/keyClass/message/v2timconversation.md)? >
* 参数描述 : 会话列表数据

### loadData

* 参数类型 : void Function()
* 参数描述 : 为会话列表UI加载数据操作

### reloadData

* 参数类型 : void Function()
* 参数描述 : 为会话列表UI重新加载数据操作

### pinConversation

* 参数类型 : Future< [V2TimCallback](../../api/keyClass/v2timcallback.md) > Function({required String conversationID, required bool isPinned})
* 参数描述 : 会话置顶操作

### setConversationDraft

* 参数类型 : Future< [V2TimCallback](../../api/keyClass/v2timcallback.md) > Function({required String conversationID, String? draftText})
* 参数描述 : 为会话设置草稿操作

### clearHistoryMessage

* 参数类型 : Future< [V2TimCallback](../../api/keyClass/v2timcallback.md) > Function({required [V2TimConversation](../../api/keyClass/message/v2timconversation.md) conversation})
* 参数描述 : 清除会话历史记录操作

### deleteConversation

* 参数类型 : Future< [V2TimCallback](../../api/keyClass/v2timcallback.md) > Function({required String conversationID})
* 参数描述 : 删除会话操作

### dispose

* 参数类型 : void Function()
* 参数描述 : 会话列表UI销毁操作

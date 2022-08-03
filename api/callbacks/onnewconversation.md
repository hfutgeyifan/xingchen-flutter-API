---
description: 有新的会话
---

# OnNewConversation

## 功能介绍

有新的会话

* 比如收到一个新同事发来的单聊消息、或者被拉入了一个新的群组中，可以根据会话的 lastMessage的 timestamp 重新对会话列表做排序

## 回调函数模版

```dart
OnNewConversation = void Function(
List<V2TimConversation> conversationList
)
```

## 参数详解

| 参数名称             | 参数类型                                                                       | 参数描述   |
| ---------------- | -------------------------------------------------------------------------- | ------ |
| conversationList | List< [V2TimConversation](../guan-jian-lei/message/v2timconversation.md) > | 新的会话列表 |

## 代码示例

```dart
    //设置会话监听器
    V2TimConversationListener listener = V2TimConversationListener(
        onNewConversation: (List<V2TimConversation> conversationList) => {
              //有新的会话（比如收到一个新同事发来的单聊消息、或者被拉入了一个新的群组中），可以根据会话的 lastMessage -> timestamp 重新对会话列表做排序
              //conversationList 新的会话列表
            });
    //添加会话监听器
    TencentImSDKPlugin.v2TIMManager
        .getConversationManager()
        .addConversationListener(listener: listener);
```

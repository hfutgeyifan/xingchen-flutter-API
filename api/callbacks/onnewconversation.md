---
description: 有新的会话
---

# OnNewConversation

## 回调函数功能描述

有新的会话

* 比如收到一个新同事发来的单聊消息、或者被拉入了一个新的群组中，可以根据会话的 lastMessage的 timestamp 重新对会话列表做排序

## 回调函数模版

```dart
OnNewConversation = void Function(
List<V2TimConversation> conversationList
)
```

## 回调函数参数说明

| 参数名称             | 参数类型                                                                       | 参数描述   |
| ---------------- | -------------------------------------------------------------------------- | ------ |
| conversationList | List< [V2TimConversation](../guan-jian-lei/message/v2timconversation.md) > | 新的会话列表 |

## 代码示例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onNewConversation: (List<V2TimConversation> conversationList) => {
        //有新的会话（比如收到一个新同事发来的单聊消息、或者被拉入了一个新的群组中），可以根据会话的 lastMessage -> timestamp 重新对会话列表做排序
        //conversationList 新的会话列表
      }
    );
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```
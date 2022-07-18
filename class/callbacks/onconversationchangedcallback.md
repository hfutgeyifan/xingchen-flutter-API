---
description: 某些会话的关键信息发生变化
---

# OnConversationChangedCallback

## 回调函数功能描述

某些会话的关键信息发生变化

* 未读计数发生变化、最后一条消息被更新等等，可以根据会话的 lastMessage 的 timestamp 重新对会话列表做排序

## 回调函数模版

```dart
OnConversationChangedCallback = void Function(
List<V2TimConversation> conversationList
)
```

## 回调函数参数说明

| 参数名称             | 参数类型                                                 | 参数描述    |
| ---------------- | ---------------------------------------------------- | ------- |
| conversationList | List< [V2TimConversation](../v2timconversation.md) > | 改变的会话列表 |

## 使用案例

```dart
    //设置会话监听器
    V2TimConversationListener listener = V2TimConversationListener(
      onConversationChanged: (List<V2TimConversation> conversationList) => {
        //某些会话的关键信息发生变化未读计数发生变化、最后一条消息被更新等等），可以根据会话的 lastMessage -> timestamp 重新对会话列表做排序
        //conversationList 改变的会话列表
      }
    );
    //添加会话监听器
    TencentImSDKPlugin.v2TIMManager
        .getConversationManager()
        .addConversationListener(listener: listener); //需要新增的会话监听器
```


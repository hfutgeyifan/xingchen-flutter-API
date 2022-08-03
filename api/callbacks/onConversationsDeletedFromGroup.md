---
description: 会话分组删除会话
---

# OnConversationsDeletedFromGroup

## 功能介绍

会话分组删除会话

## 回调函数模版

```dart
OnConversationsDeletedFromGroup = void Function(
    String groupName, List<V2TimConversation> conversationList);
)
```

## 参数详解

| 参数名称             | 参数类型                                                                       | 参数描述    |
| ---------------- | -------------------------------------------------------------------------- | ------- |
| groupName | String | 被删除的会话的分组名 |
| conversationList | List< [V2TimConversation](../guan-jian-lei/message/v2timconversation.md) > | 删除的会话列表 |

## 代码示例

```dart
    //设置会话监听器
    V2TimConversationListener listener = V2TimConversationListener(
        onConversationsDeletedFromGroup:
            (String groupName, List<V2TimConversation> conversationList) => {
                  //会话分组删除会话
                  //groupName 被删除的会话的分组名
                  //conversationList 删除的会话列表
                });
    //添加会话监听器
    TencentImSDKPlugin.v2TIMManager
        .getConversationManager()
        .addConversationListener(listener: listener);
```

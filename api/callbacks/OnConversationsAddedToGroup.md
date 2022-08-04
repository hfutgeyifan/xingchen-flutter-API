---
description: 会话分组新增会话
---

# OnConversationsAddedToGroup

## 功能介绍

会话分组新增会话

## 回调函数模版

```dart
OnConversationsAddedToGroup = void Function(
    String groupName, List<V2TimConversation> conversationList);
)
```

## 参数详解

| 参数名称             | 参数类型                                                                       | 参数描述    |
| ---------------- | -------------------------------------------------------------------------- | ------- |
| groupName | String | 被新增的会话的分组名 |
| conversationList | List< [V2TimConversation](../keyClass/message/v2timconversation.md) > | 新增的会话列表 |

## 代码示例

```dart
    //设置会话监听器
    V2TimConversationListener listener = V2TimConversationListener(
        onConversationsAddedToGroup:
            (String groupName, List<V2TimConversation> conversationList) => {
                  //会话分组新增会话
                  //groupName 被新增的会话的分组名
                  //conversationList 新增的会话列表
                });
    //添加会话监听器
    TencentImSDKPlugin.v2TIMManager
        .getConversationManager()
        .addConversationListener(listener: listener);
```

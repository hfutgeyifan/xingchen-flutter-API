---
description: 会话分组被创建
---

# OnConversationGroupCreated

## 功能介绍

会话分组被创建

## 回调函数模版

```dart
OnConversationGroupCreated = void Function(
    String groupName, List<V2TimConversation> conversationList);
)
```

## 参数详解

| 参数名称             | 参数类型                                                                       | 参数描述    |
| ---------------- | -------------------------------------------------------------------------- | ------- |
| groupName | String | 创建的会话分组名 |
| conversationList | List< [V2TimConversation](../keyClass/message/v2timconversation.md) > | 创建的会话分组中的初始化会话列表 |

## 代码示例

```dart
    //设置会话监听器
    V2TimConversationListener listener = V2TimConversationListener(
        onConversationGroupCreated:
            (String groupName, List<V2TimConversation> conversationList) => {
                  //会话分组被创建
                  //groupName 创建的会话分组名
                  //conversationList 创建的会话分组中的初始化会话列表
                });
    //添加会话监听器
    TencentImSDKPlugin.v2TIMManager
        .getConversationManager()
        .addConversationListener(listener: listener);
```

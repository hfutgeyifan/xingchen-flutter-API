---
description: 会话分组被删除
---

# OnConversationGroupDeleted

## 功能介绍

会话分组被删除

## 回调函数模版

```dart
OnConversationGroupDeleted = void Function(String groupName);
)
```

## 参数详解

| 参数名称             | 参数类型                                                                       | 参数描述    |
| ---------------- | -------------------------------------------------------------------------- | ------- |
| groupName | String | 删除的会话分组名 |

## 代码示例

```dart
    //设置会话监听器
    V2TimConversationListener listener = V2TimConversationListener(
        onConversationGroupDeleted: (String groupName) => {
              //会话分组被删除
              //groupName 删除的会话分组名
            });
    //添加会话监听器
    TencentImSDKPlugin.v2TIMManager
        .getConversationManager()
        .addConversationListener(listener: listener);
```

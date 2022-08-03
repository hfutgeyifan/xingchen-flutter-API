---
description: 会话分组名变更
---

# OnConversationGroupNameChanged

## 功能介绍

会话分组名变更

## 回调函数模版

```dart
OnConversationGroupNameChanged = void Function(
    String oldName, String newName);
)
```

## 参数详解

| 参数名称             | 参数类型                                                                       | 参数描述    |
| ---------------- | -------------------------------------------------------------------------- | ------- |
| oldName | String | 被修改的会话分组名 |
| newName | String | 新的会话分组名 |

## 代码示例

```dart
    //设置会话监听器
    V2TimConversationListener listener = V2TimConversationListener(
        onConversationGroupNameChanged: (String oldName, String newName) => {
              //会话分组名变更
              //oldName 被修改的会话分组名
              //newName 新的会话分组名
            });
    //添加会话监听器
    TencentImSDKPlugin.v2TIMManager
        .getConversationManager()
        .addConversationListener(listener: listener);
```

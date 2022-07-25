---
description: 会话未读总数变更通知
---

# OnTotalUnreadMessageCountChanged

## 功能介绍

会话未读总数变更通知

* 未读总数会减去设置为免打扰的会话的未读数

## 回调函数模版

```dart
OnTotalUnreadMessageCountChanged = void Function(
int totalUnreadCount
)
```

## 参数详解

| 参数名称             | 参数类型 | 参数描述   |
| ---------------- | ---- | ------ |
| totalUnreadCount | int  | 会话未读总数 |

## 代码示例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onTotalUnreadMessageCountChanged: (int totalUnreadCount) => {
        //会话未读总数变更通知，未读总数会减去设置为免打扰的会话的未读数
        //totalUnreadCount 会话未读总数
      }
    );
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```


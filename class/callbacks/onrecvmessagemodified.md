---
description: 消息内容被修改
---

# OnRecvMessageModified

## 回调函数功能描述

消息内容被修改

## 回调函数模版

```dart
OnRecvMessageModified = void Function(
V2TimMessage message
)
```

## 回调函数参数说明

| 参数名称    | 参数类型                               | 参数描述       |
| ------- | ---------------------------------- | ---------- |
| message | [V2TimMessage](../v2timmessage.md) | 被修改之后的消息对象 |

## 使用案例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onRecvMessageModified: (V2TimMessage message) {
        // 消息内容被修改
        // message 为被修改之后的消息对象
      },
    );
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```


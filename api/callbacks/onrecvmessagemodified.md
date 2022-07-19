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

| 参数名称    | 参数类型                                                     | 参数描述       |
| ------- | -------------------------------------------------------- | ---------- |
| message | [V2TimMessage](../guan-jian-lei/message/v2timmessage.md) | 被修改之后的消息对象 |

## 代码示例

```dart
    //设置会话监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onRecvMessageModified: (V2TimMessage message) {
        // 消息内容被修改
        // message 为被修改之后的消息对象
      },
    );
    //添加会话监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```

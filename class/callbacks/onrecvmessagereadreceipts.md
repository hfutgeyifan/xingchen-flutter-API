---
description: 消息已读回执通
---

# OnRecvMessageReadReceipts

## 回调函数功能描述

消息已读回执通

* 如果自己发送的消息支持已读回执，消息接收端调用 sendMessageReadReceipts，自己会收到该通知

## 回调函数模版

```dart
OnRecvMessageReadReceipts = void Function(
List<V2TimMessageReceipt> receiptList
)
```

## 回调函数参数说明

| 参数名称    | 参数类型                                                     | 参数描述   |
| ------- | -------------------------------------------------------- | ------ |
| message | List< [V2TimMessageReceipt](../v2timmessagereceipt.md) > | 消息已读列表 |

## 使用案例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onRecvMessageReadReceipts: (List<V2TimMessageReceipt> receiptList) {
        //消息已读回执通知（如果自己发送的消息支持已读回执，消息接收端调用 sendMessageReadReceipts，自己会收到该通知）
        //receiptList 消息已读列表
        for (V2TimMessageReceipt element in receiptList) {
          element.groupID; // 群id
          element.msgID; // 已读回执消息 ID
          element.readCount; // 群消息最新已读数
          element.unreadCount; // 群消息最新未读数
          element.userID; //  C2C 消息对方 ID
        }
      },
    );
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```


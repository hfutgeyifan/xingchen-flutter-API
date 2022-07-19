---
description: C2C 对端用户会话已读通知
---

# OnRecvC2CReadReceiptCallback

## 回调函数功能描述

C2C 对端用户会话已读通知

* 如果对端用户调用 [markC2CMessageAsRead](../v2timmessagemanager/markc2cmessageasread.md) 接口，自己会收到该回调

## 回调函数模版

```dart
OnRecvC2CReadReceiptCallback = void Function(
List<V2TimMessageReceipt> receiptList
)
```

## 回调函数参数说明

| 参数名称        | 参数类型                                                                           | 参数描述   |
| ----------- | ------------------------------------------------------------------------------ | ------ |
| receiptList | List< [V2TimMessageReceipt](../guan-jian-lei/message/v2timmessagereceipt.md) > | 消息已读列表 |

## 代码示例

```dart
    //创建消息监听器
    V2TimAdvancedMsgListener listener = V2TimAdvancedMsgListener(
      onRecvC2CReadReceipt: (List<V2TimMessageReceipt> receiptList) {
        //C2C 对端用户会话已读通知（如果对端用户调用 markC2CMessageAsRead 接口，自己会收到该回调，回调只会携带对端 userID 和对端已读 timestamp 信息）
        //receiptList 消息已读列表
        for (V2TimMessageReceipt element in receiptList) {
          element.groupID; // 群id
          element.msgID; // 已读回执消息 ID
          element.readCount; // 群消息最新已读数
          element.unreadCount; // 群消息最新未读数
          element.userID; //  C2C 消息对方 ID
        }
    );
    // 添加高级消息的事件监听器
    TencentImSDKPlugin.v2TIMManager
        .getMessageManager()
        .addAdvancedMsgListener(listener: listener);
```

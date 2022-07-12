---
description: 高级消息监听器
---

# V2TimAdvancedMsgListener

## 关键类描述

高级消息监听器

## 参数

### onRecvC2CReadReceipt

参数类型 : OnRecvC2CReadReceiptCallback

参数描述：C2C 对端用户会话已读通知（如果对端用户调用 markC2CMessageAsRead 接口，自己会收到该回调，回调只会携带对端 userID 和对端已读 timestamp 信息）

### onRecvMessageRevoked

参数类型 : OnRecvMessageRevokedCallback

参数描述：收到消息撤回

### onRecvNewMessage

参数类型 : OnRecvNewMessageCallback

参数描述：收到新消息

### onSendMessageProgress

参数类型 : OnSendMessageProgressCallback

参数描述：上传消息进度事件

### onRecvMessageModified

参数类型 : OnRecvMessageModified

参数描述：消息内容被修改

### onRecvMessageReadReceipts

参数类型 : OnRecvMessageReadReceipts

参数描述：消息已读回执通知（如果自己发的消息支持已读回执，消息接收端调用了 sendMessageReadReceipts 接口，自己会收到该回调）

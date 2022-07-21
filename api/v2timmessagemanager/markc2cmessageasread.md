---
description: 设置单聊消息已读√
---

# markC2CMessageAsRead

## 功能介绍

设置单聊消息已读

* 对端会收到 [`onRecvC2CReadReceipt`](../callbacks/onrecvc2creadreceiptcallback.md) 回调，回调里面会携带清空会话未读数的时间戳。

## 参数详解

| 参数名称   | 参数类型   | 是否必填 | 描述            |
| ------ | ------ | ---- | ------------- |
| userID | String | 是    | 需要设置消息已读的用户id |

## 返回值

```dart
V2TimCallback

{
    code : int
    desc : String
}
```

## 返回值详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |

## 代码示例  &#x20;

```dart
    // 设置单聊消息已读
    V2TimCallback markC2CMessageAsReadRes = await TencentImSDKPlugin
        .v2TIMManager
        .getMessageManager()
        .markC2CMessageAsRead(userID: "userID"); // 需要设置消息已读的用户id
    if (markC2CMessageAsReadRes.code == 0) {
      // 标记成功
    }
```

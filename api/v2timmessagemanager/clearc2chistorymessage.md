---
description: 清空单聊本地及云端的消息（不删除会话）
---

# clearC2CHistoryMessage

## 功能介绍

清空单聊本地及云端的消息（不删除会话）

{% hint style="info" %}
1. 5.4.666 及以上版本支持
2. 会话内的消息在本地删除的同时，在服务器也会同步删除。
3. web不支持该接口
{% endhint %}

## 参数详解

| 参数名称   | 参数类型   | 是否必填 | 描述        |
| ------ | ------ | ---- | --------- |
| userID | String | 是    | 需要删除的用户id |

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
// 清空单聊本地及云端的消息（不删除会话）
TencentImSDKPlugin
    .v2TIMManager
    .getMessageManager()
    .clearC2CHistoryMessage(
    userID: "userID"，// 需要清空记录的用户id
    );
```

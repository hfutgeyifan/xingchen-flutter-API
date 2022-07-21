---
description: 删除会话√
---

# deleteConversation

## 功能介绍

删除会话

* 在删除好友或退出群组后，如果不需要查看好友或群会话的历史消息，可以选择删除会话。
* 会话删除默认关闭多端同步，可在[即时通信 IM 控制台](https://console.cloud.tencent.com/im-detail/login-message) 开启多端同步。

{% hint style="info" %}
删除会话，会同时删除终端和服务器的历史消息，且无法恢复。

会话内的消息在本地删除的同时，在服务器也会同步删除。
{% endhint %}

## 参数详解

| 参数名称           | 参数类型   | 是否必填 | 描述        |
| -------------- | ------ | ---- | --------- |
| conversationID | String | 是    | 需要删除的会话id |

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
    //删除会话
    V2TimCallback deleteConversationRes = await TencentImSDKPlugin.v2TIMManager
        .getConversationManager()
        .deleteConversation(
          conversationID: "",//需要删除的会话id
        );
    if (deleteConversationRes.code == 0) {
      //删除成功
    }
```

---
description: 创建转发消息√
---

# createForwardMessage

## 功能介绍

创建转发消息

* 如果您需要转发单条消息，可以先通过 `createForwardMessage` 接口创建一条和原消息内容完全一样的转发消息，再调用 `sendMessage` 接口把转发消息发送出去。

## 参数详解

| 参数名称               | 参数类型   | 是否必填 | 描述         |
| ------------------ | ------ | ---- | ---------- |
| msgID              | String | 是    | 需要转发的消息的id |
| webMessageInstance | String | 否    | web端消息的实例  |

## 返回值

```dart
V2TimValueCallback<V2TimMsgCreateInfoResult>

{
    code : int
    desc : String
    data : {
      id : String
      messageInfo : V2TimMessage
    }
}
```

## 返回值详解

| 名称   | 数值类型                                                                       | 描述                                                             |
| ---- | -------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                        | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                     | 请求结果描述                                                         |
| data | [V2TimMsgCreateInfoResult](../keyClass/message/v2timsdklistener-1.md) | 创建的转发消息                                                        |

## 代码示例  &#x20;

```dart
    // 创建转发消息
    V2TimValueCallback<V2TimMsgCreateInfoResult> createForwardMessageRes =
        await TencentImSDKPlugin.v2TIMManager
            .getMessageManager()
            .createForwardMessage(
              // 需要合并的消息id列表，需要被转发的消息列表，消息列表里可以包含合并消息，不能包含群 Tips 消息 messageId为消息发送后服务端创建的messageid，不是创建消息时的消息id
              msgID: "msgid",
              webMessageInstance:"", // 若消息为web端传来的消息，请使用V2TimMessage中的messageFromWeb作为此处的参数
            );
    if (createForwardMessageRes.code == 0) {
      // 文本信息创建成功
      String id = createForwardMessageRes.data!.id!;
      // 发送转发消息
      // 在sendMessage时，若只填写receiver则发个人用户单聊消息
      //                 若只填写groupID则发群组消息
      //                 若填写了receiver与groupID则发群内的个人用户，消息在群聊中显示，只有指定receiver能看见
      V2TimValueCallback<V2TimMessage> sendMessageRes = await TencentImSDKPlugin
          .v2TIMManager
          .getMessageManager()
          .sendMessage(id: id, receiver: "userID", groupID: "groupID");
      if (sendMessageRes.code == 0) {
        // 发送成功
      }
    }
```

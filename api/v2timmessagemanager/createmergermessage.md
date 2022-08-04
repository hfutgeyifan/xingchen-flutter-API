---
description: 创建合并消息√
---

# createMergerMessage

## 功能介绍

创建合并消息

*   如果您想实现类似于微信的合并转发功能，需要进行以下步骤：

    1. 根据原始消息列表创建一条合并消息。
    2. 把合并消息发送到对端。
    3. 对端收到合并消息后解析出原始消息列表。


* 我们在创建一条合并消息的时候不仅要设置合并消息列表，还要设置标题和摘要信息。

## 参数详解

| 参数名称                   | 参数类型           | 是否必填 | 描述                                                           |
| ---------------------- | -------------- | ---- | ------------------------------------------------------------ |
| msgIDList              | String         | 是    | 原始消息ID列表                                                     |
| title                  | String         | 是    | 标题                                                           |
| abstractList           | List< String > | 是    | 摘要列表                                                         |
| compatibleText         | String         | 是    | 兼容文本信息，低版本 SDK 如果不支持合并消息，默认会收到一条文本消息，文本消息的内容为 compatibleText |
| webMessageInstanceList | List< String > | 否    | web端消息列表                                                     |

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
| data | [V2TimMsgCreateInfoResult](../keyClass/message/v2timsdklistener-1.md) | 创建的合并消息                                                        |

## 代码示例  &#x20;

```dart
    // 创建合并消息
    V2TimValueCallback<V2TimMsgCreateInfoResult> createMergerMessageResult =
        await TencentImSDKPlugin.v2TIMManager
            .getMessageManager()
            .createMergerMessage(
              // 需要合并的消息id列表，需要被转发的消息列表，消息列表里可以包含合并消息，不能包含群 Tips 消息 messageId为消息发送后服务端创建的messageid，不是创建消息时的消息id
              msgIDList: ["msgid1", "msgid2"],
              title: "user1与user2的聊天", // 合并消息标题
              abstractList: ["user1:hello", "user2:你好"], // 合并消息摘要列表
              compatibleText:
                  "当前版本不支持该消息", // 合并消息兼容文本，低版本 SDK 如果不支持合并消息，默认会收到一条文本消息，文本消息的内容为 compatibleText
            );
    if (createMergerMessageResult.code == 0) {
      // 发送合并消息
      // 在sendMessage时，若只填写receiver则发个人用户单聊消息
      //                 若只填写groupID则发群组消息
      //                 若填写了receiver与groupID则发群内的个人用户，消息在群聊中显示，只有指定receiver能看见
      TencentImSDKPlugin.v2TIMManager.getMessageManager().sendMessage(
            id: createMergerMessageResult.data!.id!,
            receiver: "receiver",
            groupID: "groupID",
          );
    }
```

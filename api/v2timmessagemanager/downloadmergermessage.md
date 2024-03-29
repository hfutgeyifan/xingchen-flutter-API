---
description: 获取合并消息的子消息列表
---

# downloadMergerMessage

## 功能介绍

获取合并消息的子消息列表(web不支持)

## 参数详解

| 参数名称  | 参数类型   | 是否必填 | 描述         |
| ----- | ------ | ---- | ---------- |
| msgID | String | 是    | 需要获取的合并消息的 |

## 返回值

```dart
V2TimValueCallback<List<V2TimMessage>>

{
    code : int
    desc : String
    data : List<V2TimMessage>
}
```

## 返回值详解

| 名称   | 数值类型                                                             | 描述                                                             |
| ---- | ---------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                              | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                           | 请求结果描述                                                         |
| data | List< [V2TimMessage](../keyClass/message/v2timmessage.md) > | 获取到的合并消息列表                                                     |

## 代码示例  &#x20;

```dart
    // 创建消息监听器
    V2TimAdvancedMsgListener listener = V2TimAdvancedMsgListener(
      onRecvNewMessage: (V2TimMessage message) async {
        // 处理合并消息消息
        if (message.elemType == MessageElemType.V2TIM_ELEM_TYPE_MERGER) {
          message.mergerElem?.abstractList; // 摘要列表
          message.mergerElem?.isLayersOverLimit; // 是否超出合并上限
          message.mergerElem?.title; // 标题
          // 根据消息id对合并消息进行下载
          V2TimValueCallback<List<V2TimMessage>> download =
              await TencentImSDKPlugin.v2TIMManager
                  .getMessageManager()
                  .downloadMergerMessage(
                    msgID: message.msgID!,
                  );
          if (download.code == 0) {
            List<V2TimMessage> messageList = download.data!;
          }
        }
      },
    );
    // 添加高级消息的事件监听器
    TencentImSDKPlugin.v2TIMManager
        .getMessageManager()
        .addAdvancedMsgListener(listener: listener);

    // 创建合并消息
    V2TimValueCallback<V2TimMsgCreateInfoResult> createMergerMessageResult =
        await TencentImSDKPlugin.v2TIMManager
            .getMessageManager()
            .createMergerMessage(
              msgIDList: [
                "msgid1",// 需要合并的已经发送后的messageID
                "msgid2"// 需要合并的已经发送后的messageID
              ], // 需要合并的消息id列表，需要被转发的消息列表，消息列表里可以包含合并消息，不能包含群 Tips 消息
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

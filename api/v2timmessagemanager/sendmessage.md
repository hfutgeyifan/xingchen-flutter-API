---
description: 发送消息√
---

# sendMessage

## 功能介绍

发送消息

* 发送消息方法在核心类 `TencentImSDKPlugin.`[`v2TIMManager`](../v2timmanager/)`.`[`getMessageManager`](../v2timmanager/getmessagemanager.md)`()`中。
* [`V2TimMessage`](../guan-jian-lei/message/v2timmessage.md) 中可以携带不同类型子类，表示不同类型的消息。
* 发送消息首先通过createXXXMessage创建不同种类的信息，再通过[sendMessage](sendmessage.md)根据消息id发送。

{% hint style="info" %}
消息类型如下：

createTextMessage：文本消息

createCustomMessage：自定义消息

createImageMessage：图片消息

createSoundMessage：音频消息

createVideoMessage：视频消息

createFileMessage：文件消息

createLocationMessage：位置消息

createFaceMessage：表情消息

createForwardMessage：创建转发消息

createMergerMessage：创建合并消息

createTargetedGroupMessage：定向群消息
{% endhint %}

## 参数详解

| 参数                        | 参数类型                                                           | 是否必填 | 含义                     | 单聊有效   | 群聊有效   | 说明                                                    |
| ------------------------- | -------------------------------------------------------------- | ---- | ---------------------- | ------ | ------ | ----------------------------------------------------- |
| id                        | String                                                         | 是    | 创建消息返回的id              | YES    | YES    | 需要通过对应的 `createXxxMessage` 接口先行创建                     |
| receiver                  | String                                                         | 是    | 单聊消息接收者 userID         | YES    | **NO** | 如果是发送 C2C 单聊消息，只需要指定 receiver 即可                      |
| groupID                   | String                                                         | 是    | 群聊 groupID             | **NO** | YES    | 如果是发送群聊消息，只需要指定 groupID 即可                            |
| priority                  | [MessagePriorityEnum](../enums/messagepriority.md)             | 否    | 消息优先级                  | **NO** | YES    | 请把重要消息设置为高优先级（例如红包、礼物消息），高频且不重要的消息设置为低优先级（例如点赞消息）     |
| onlineUserOnly            | bool                                                           | 否    | 是否只有在线用户才能收到           | YES    | YES    | 如果设置为 YES ，接收方历史消息拉取不到，常被用于实现”对方正在输入”或群组里的非重要提示等弱提示功能 |
| offlinePushInfo           | [OfflinePushInfo](../guan-jian-lei/message/offlinepushinfo.md) | 否    | 离线推送信息                 | YES    | YES    | 离线推送时携带的标题和内容                                         |
| needReadReceipt           | bool                                                           | 否    | 发送群消息是否支持已读            | **NO** | YES    | 发送群消息是否支持已读                                           |
| isExcludedFromUnreadCount | bool                                                           | 否    | 发送消息是否计入会话未读数          | YES    | YES    | 如果设置为 true，发送消息不会计入会话未读，默认为 false                     |
| isExcludedFromLastMessage | bool                                                           | 否    | 发送消息是否计入会话 lastMessage | YES    | YES    | 如果设置为 true，发送消息不会计入会话 lastMessage，默认为 false           |
| cloudCustomData           | String                                                         | 否    | 消息云端数据                 | YES    | YES    | 消息附带的额外的数据，存云端，消息的接受者可以访问到                            |
| localCustomData           | String                                                         | 否    | 消息本地数据                 | YES    | YES    | 消息附带的额外的数据，存本地，消息的接受者不可以访问到，App 卸载后数据丢失               |

## 返回值

```dart
V2TimValueCallback<V2TimMessage>

{
    code : int
    desc : String
    data : {
      cloudCustomData : String
      customElem : V2TimCustomElem
      elemType : int
      faceElem : V2TimFaceElem
      faceUrl : String
      fileElem : V2TimFileElem
      friendRemark : String
      groupAtUserList : List<String>
      groupID : String
      groupTipsElem : V2TimGroupTipsElem
      id : String
      imageElem : V2TimImageElem
      isExcludedFromLastMessage : bool
      isExcludedFromUnreadCount : bool
      isPeerRead : bool
      isRead : bool
      isSelf : bool
      localCustomData : String
      localCustomInt : int
      locationElem : V2TimLocationElem
      mergerElem : V2TimMergerElem
      messageFromWeb : String
      msgID : String
      nameCard : String
      needReadReceipt : bool
      nickName : String
      offlinePushInfo : V2TimOfflinePushInfo
      priority : int
      progress : int
      random : int
      sender : String
      seq : String
      soundElem : V2TimSoundElem
      status : int
      textElem : V2TimTextElem
      timestamp : int
      userID : String
      videoElem : V2TimVideoElem
    }
}
```

## 返回值详解

| 名称   | 数值类型                                                     | 描述                                                             |
| ---- | -------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                      | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                   | 请求结果描述                                                         |
| data | [V2TimMessage](../guan-jian-lei/message/v2timmessage.md) | 发送的信息                                                          |

## 代码示例

```dart
    // 创建文本消息
    V2TimValueCallback<V2TimMsgCreateInfoResult> createTextMessageRes =
        await TencentImSDKPlugin.v2TIMManager
            .getMessageManager()
            .createTextMessage(
              text: "test", // 文本信息
            );
    if (createTextMessageRes.code == 0) {
      // 文本信息创建成功
      String? id = createTextMessageRes.data?.id;
      // 发送文本消息
      // 在sendMessage时，若只填写receiver则发个人用户单聊消息
      //                 若只填写groupID则发群组消息
      //                 若填写了receiver与groupID则发群内的个人用户，消息在群聊中显示，只有指定receiver能看见
      V2TimValueCallback<V2TimMessage> sendMessageRes =
          await TencentImSDKPlugin.v2TIMManager.getMessageManager().sendMessage(
              id: id!, // 创建的messageid
              receiver: "userID", // 接收人id
              groupID: "groupID", // 接收群组id
              priority: MessagePriorityEnum.V2TIM_PRIORITY_DEFAULT, // 消息优先级
              onlineUserOnly:
                  false, // 是否只有在线用户才能收到，如果设置为 true ，接收方历史消息拉取不到，常被用于实现“对方正在输入”或群组里的非重要提示等弱提示功能，该字段不支持 AVChatRoom。
              isExcludedFromUnreadCount: false, // 发送消息是否计入会话未读数
              isExcludedFromLastMessage: false, // 发送消息是否计入会话 lastMessage
              needReadReceipt:
                  false, // 消息是否需要已读回执（只有 Group 消息有效，6.1 及以上版本支持，需要您购买旗舰版套餐）
              offlinePushInfo: OfflinePushInfo(), // 离线推送时携带的标题和内容
              cloudCustomData: "", // 消息云端数据，消息附带的额外的数据，存云端，消息的接受者可以访问到
              localCustomData:
                  "" // 消息本地数据，消息附带的额外的数据，存本地，消息的接受者不可以访问到，App 卸载后数据丢失
              );
      if (sendMessageRes.code == 0) {
        // 发送成功
      }
    }
```

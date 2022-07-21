---
description: 添加多Element消息√
---

# appendMessage

## 功能介绍

添加多Element消息

* 为一个消息添加额外的消息，一般用于为图片消息添加text消息进行描述等场景。

## 参数详解

| 参数名称                  | 参数类型   | 是否必填 | 描述               |
| --------------------- | ------ | ---- | ---------------- |
| createMessageBaseId   | String | 是    | 需要添加Element的消息id |
| createMessageAppendId | String | 是    | 添加的消息id          |

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
| data | [V2TimMessage](../guan-jian-lei/message/v2timmessage.md) | 添加消息后的信息                                                       |

## 代码示例  &#x20;

```dart
     // 创建文本消息
    V2TimValueCallback<V2TimMsgCreateInfoResult> createTextMessageRes =
        await TencentImSDKPlugin.v2TIMManager
            .getMessageManager()
            .createTextMessage(
              text: "test", // 文本信息
            );
    // 创建append消息
    V2TimValueCallback<V2TimMsgCreateInfoResult> createAppendMessageRes =
        await TencentImSDKPlugin.v2TIMManager
            .getMessageManager()
            .createTextMessage(
              text: "append", // 添加的文本信息
            );
    if (createTextMessageRes.code == 0 && createAppendMessageRes.code == 0) {
      // 文本信息创建成功
      String? id = createTextMessageRes.data?.id;
      String? appendId = createAppendMessageRes.data?.id;
      // 为第一个消息添加一个Text消息
      V2TimValueCallback<V2TimMessage> appendMessageRes =
          await TencentImSDKPlugin.v2TIMManager
              .getMessageManager()
              .appendMessage(
                  createMessageBaseId: id!, createMessageAppendId: appendId!);
      if (appendMessageRes.code == 0) {
        // 发送文本消息
        // 在sendMessage时，若只填写receiver则发个人用户单聊消息
        //                 若只填写groupID则发群组消息
        //                 若填写了receiver与groupID则发群内的个人用户，消息在群聊中显示，只有指定receiver能看见
        V2TimValueCallback<V2TimMessage> sendMessageRes =
            await TencentImSDKPlugin.v2TIMManager
                .getMessageManager()
                .sendMessage(id: id, receiver: "userID", groupID: "groupID");//注意此时的id为被添加的消息id
        if (sendMessageRes.code == 0) {
          // 发送成功
          // append的Text消息在sendMessageRes.data.textElem.nextElem中
        }
      }
    }
```

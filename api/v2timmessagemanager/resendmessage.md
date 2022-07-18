---
description: 消息重发
---

# reSendMessage

## API功能介绍

消息重发

* 当环境网络环境较差或文件上传失败等原因会导致信息发送失败，此时需要调用消息重发的API。
* 具体消息发送失败的原因可见sendMessage返回的错误码。

## 参数详解

| 参数名称                | 参数类型   | 是否必填      | 描述         |
| ------------------- | ------ | --------- | ---------- |
| msgID               | String | 是         | 需要重发的消息id  |
| onlineUserOnly      | bool   | 否         | 是否是发送给在线用户 |
| webMessageInstatnce | Object | 否（web端必填） | web端消息的实例  |

## 返回模板

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

## 返回参数详解

| 名称   | 数值类型                                                     | 描述                                                             |
| ---- | -------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                      | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                   | 请求结果描述                                                         |
| data | [V2TimMessage](../guan-jian-lei/message/v2timmessage.md) | 重发后的消息                                                         |

## 使用案例  &#x20;

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
      String id = createTextMessageRes.data.id;
      // 发送文本消息
      // 在sendMessage时，若只填写receiver则发个人用户单聊消息
      //                 若只填写groupID则发群组消息
      //                 若填写了receiver与groupID则发群内的个人用户，消息在群聊中显示，只有指定receiver能看见
      V2TimValueCallback<V2TimMessage> sendMessageRes = await TencentImSDKPlugin
          .v2TIMManager
          .getMessageManager()
          .sendMessage(id: id, receiver: "userID", groupID: "groupID");
      if (sendMessageRes.code == 0) {
        // 发送成功
      } else {
        V2TimValueCallback<V2TimMessage> reSendMessageRes =
            await TencentImSDKPlugin
                .v2TIMManager
                .getMessageManager()
                .reSendMessage(
                    msgID: id,// 需要重发的消息id
                    onlineUserOnly: false,// 是否是发送给在线用户
                    webMessageInstatnce: ""//web端消息的实例);
        if (reSendMessageRes.code == 0) {
          // 重发成功
        }
      }
    }
```

---
description: 发送回复消息
---

# sendReplyMessage

## API功能介绍

发送回复消息

## 参数详解

| 参数                        | 参数类型                                    | 是否必填 | 含义             |
| ------------------------- | --------------------------------------- | ---- | -------------- |
| id                        | String                                  | 是    | 发送的回复消息的id     |
| receiver                  | String                                  | 是    | 单聊消息接收者 userID |
| groupID                   | String                                  | 是    | 群聊 groupID     |
| replyMessage              | [V2TimMessage](broken-reference)        | 是    | 被回复的消息         |
| priority                  | [MessagePriorityEnum](broken-reference) | 否    | 消息优先级          |
| onlineUserOnly            | bool                                    | 否    | 是否只有在线用户才能收到   |
| needReadReceipt           | bool                                    | 否    | 消息是否需要已读回执     |
| offlinePushInfo           | [OfflinePushInfo](broken-reference)     | 否    | 离线推送信息         |
| isExcludedFromUnreadCount | bool                                    | 否    | 发送消息是否计入会话未读数  |
| localCustomData           | String                                  | 否    | 消息本地数据         |

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

| 名称   | 数值类型                             | 描述                                                             |
| ---- | -------------------------------- | -------------------------------------------------------------- |
| code | int                              | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                           | 请求结果描述                                                         |
| data | [V2TimMessage](broken-reference) | 创建的回复信息                                                        |

## 使用案例  &#x20;

```dart
 // 创建文本消息
V2TimValueCallback<V2TimMsgCreateInfoResult> createTextMessageRes = await TencentImSDKPlugin.v2TIMManager.getMessageManager().createTextMessage(
    text: "test",// 回复消息的文本信息
  );
 if(createTextMessageRes.code == 0){
       // 文本信息创建成功
    String id =  createTextMessageRes.data.id;
       // 发送文本消息
       // 在sendMessage时，若只填写receiver则发个人用户单聊消息
       //                 若只填写groupID则发群组消息
       //                 若填写了receiver与groupID则发群内的个人用户，消息在群聊中显示，只有指定receiver能看见
    V2TimValueCallback<V2TimMessage> sendMessageRes = await TencentImSDKPlugin
    .v2TIMManager
    .getMessageManager()
    .sendReplyMessage(
    id: id, // 发送的回复消息的id
    receiver: "userID", // 接收人id
    groupID: "groupID"，// 接收群组id
    replyMessage: '',// 被回复的消息 类型为V2TimMessage
    priority:0,// 消息优先级
    onlineUserOnly:false,// 是否只有在线用户才能收到，如果设置为 true ，接收方历史消息拉取不到，常被用于实现“对方正在输入”或群组里的非重要提示等弱提示功能，该字段不支持 AVChatRoom。
    isExcludedFromUnreadCount:false,// 发送消息是否计入会话未读数
    needReadReceipt:false,// 消息是否需要已读回执（只有 Group 消息有效，6.1 及以上版本支持，需要您购买旗舰版套餐）
    offlinePushInfo:"",// 离线推送时携带的标题和内容
    localCustomData:""// 消息本地数据，消息附带的额外的数据，存本地，消息的接受者不可以访问到，App 卸载后数据丢失
    );
    if(sendMessageRes.code == 0){
      // 发送成功
    }
  }
```

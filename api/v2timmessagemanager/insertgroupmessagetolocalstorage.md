---
description: 向群组消息列表中添加一条消息
---

# insertGroupMessageToLocalStorage

## API功能介绍

向群组消息列表中添加一条消息

* 只能插入文本消息，参数data为本文内容
* 该接口主要用于满足向群组聊天会话中插入一些提示性消息的需求，比如“您已经退出该群”，这类消息有展示 在聊天消息区的需求，但并没有发送给其他人的必要。
* insertGroupMessageToLocalStorage() 相当于一个被禁用了网络发送能力的 sendMessage() 接口。
* 通过该接口 save 的消息只存本地，程序卸载后会丢失。

{% hint style="info" %}
注意： web不支持该接口
{% endhint %}

## 参数详解

| 参数名称    | 参数类型   | 是否必填 | 描述     |
| ------- | ------ | ---- | ------ |
| data    | String | 是    | 文本消息内容 |
| groupID | String | 是    | 接受群组id |
| sender  | String | 是    | 发送者id  |

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

| 名称   | 数值类型                                                          | 描述                                                             |
| ---- | ------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                           | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                        | 请求结果描述                                                         |
| data | [V2TimMsgCreateInfoResult](../../class/v2timsdklistener-1.md) | 创建后的Text信息                                                     |

## 使用案例  &#x20;

```dart
// 向群组消息列表中添加一条消息
TencentImSDKPlugin.v2TIMManager
.getMessageManager()
.insertGroupMessageToLocalStorage(
        data: "data", // 文本消息内容
        groupID: "groupID", // 接收群组id
        sender: "sender"// 发送者id
        );
```

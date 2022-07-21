---
description: 创建图片消息（图片文件最大支持 28 MB）√
---

# createImageMessage

## 功能介绍

创建图片消息

* 图片文件最大支持 28 MB
* 创建图片消息需要先获取到本地图片路径。
* 创建图片路径不能使用网络Url。
* 发送消息过程中，会先将图片文件上传至服务器，同时回调上传进度。上传成功后再发送消息。

## 参数详解

| 参数名称        | 参数类型   | 是否必填       | 描述     |
| ----------- | ------ | ---------- | ------ |
| imagePath   | String | 是          | 图片本地路径 |
| fileContent | String | 否 （web 必填） | 字节数组   |
| fileName    | String | 否 （web 必填） | 图片名    |

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
| data | [V2TimMsgCreateInfoResult](../guan-jian-lei/message/v2timsdklistener-1.md) | 创建后的图片信息                                                       |

## 代码示例  &#x20;

```dart
// 创建图片消息
V2TimValueCallback<V2TimMsgCreateInfoResult> createImageMessageRes = await TencentImSDKPlugin.v2TIMManager.getMessageManager().createImageMessage(
        imagePath: "本地图片绝对路径", // 不能使用网络Url
);
  if (createImageMessageRes.code == 0) {
    String id = createImageMessageRes.data.id;
     // 发送图片消息
     // 若创建图片路径使用网络Url会报20001错误。
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

---
description: 创建音频消息
---

# createSoundMessage

## 功能介绍

创建音频消息&#x20;

* 创建语音消息需要先获取到本地语音文件路径和语音时长，其中语音时长可用于接收端 UI 显示。&#x20;
* 发送消息过程中，会先将语音文件上传至服务器，同时回调上传进度。上传成功后再发送消息。

## 参数详解

| 参数名称      | 参数类型   | 是否必填 | 描述     |
| --------- | ------ | ---- | ------ |
| soundPath | String | 是    | 音频文件地址 |
| duration  | int    | 是    | 音频文件时长 |

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
| data | [V2TimMsgCreateInfoResult](../guan-jian-lei/message/v2timsdklistener-1.md) | 创建后的音频信息                                                       |

## 代码示例  &#x20;

```dart
// 创建音频消息
  V2TimValueCallback<V2TimMsgCreateInfoResult> createSoundMessageRes =
      await TencentImSDKPlugin.v2TIMManager.getMessageManager().createSoundMessage(
        soundPath: "本地录音文件绝对路径",// 不能使用网络Url
        duration: 10,// 录音时长，需要用户自己读取
      );
  if (createSoundMessageRes.code == 0) {
    String id = createSoundMessageRes.data.id;
     // 发送音频消息
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

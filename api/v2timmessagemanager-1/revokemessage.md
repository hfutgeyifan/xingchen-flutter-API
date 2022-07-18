---
description: 撤回消息
---

# revokeMessage

## API功能介绍

撤回消息

* 默认情况下，发送者只能撤回2分钟以内的消息，您可以按需更改消息撤回时间限制，具体操作请参见 [消息撤回设置](https://cloud.tencent.com/document/product/269/38656#.E6.B6.88.E6.81.AF.E6.92.A4.E5.9B.9E.E8.AE.BE.E7.BD.AE)。
* 消息的撤回同时需要接收方 UI 代码的配合：当发送方撤回一条消息后，接收方会收到消息撤回通知 `onRecvMessageRevoked`。通知中包含了撤回消息的 msgID，您可以根据这个 msgID 判断 UI 层是哪一条消息撤回了，然后把对应的消息气泡切换成 "消息已被撤回" 状态。
* 仅支持单聊和群组中发送的普通消息，无法撤销 onlineUserOnly 为 true 即仅在线用户才能收到的消息，也无法撤销直播群（AVChatRoom）中的消息。
* web 端掉用 webMessageInstatnce 且为必传

## 参数详解

| 参数名称                | 参数类型   | 是否必填       | 描述            |
| ------------------- | ------ | ---------- | ------------- |
| msgID               | String | 是          | 需要撤回的消息id     |
| webMessageInstatnce | Object | 否 （web端必填） | 需要撤回的web端消息实例 |

## 返回模板

```dart
V2TimCallback

{
    code : int
    desc : String
}
```

## 返回参数详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |

## 使用案例  &#x20;

```dart
// 清空单聊本地及云端的消息（不删除会话）
TencentImSDKPlugin
    .v2TIMManager
    .getMessageManager()
    .revokeMessage(
    msgID: "msgID"，// 需要撤回的消息id
    webMessageInstatnce:"webMessageInstatnce",// 需要撤回的web端消息实例
    );
```

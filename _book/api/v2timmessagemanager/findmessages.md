---
description: 根据messageID 查询指定会话中的本地消息√
---

# findMessages

## 功能介绍

根据messageID 查询指定会话中的本地消息

* 只支持查询本地消息，例如接收到的消息或者调用拉取历史消息接口获取到的消息。
* 不支持查询直播群（AVChatRoom）的消息，因为其消息不会保存在本地。
* web不支持该接口

## 参数详解

| 参数名称          | 参数类型           | 是否必填 | 描述          |
| ------------- | -------------- | ---- | ----------- |
| messageIDList | List< String > | 是    | 需要查询的消息id列表 |

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
| data | List< [V2TimMessage](../keyClass/message/v2timmessage.md) > | 获取的查询到的消息列表                                                    |

## 代码示例  &#x20;

```dart
    // 根据消息id查询消息
    V2TimValueCallback<List<V2TimMessage>> msgListRes = await TencentImSDKPlugin
        .v2TIMManager
        .getMessageManager()
        .findMessages(messageIDList: ['msgid']); // 需要查询的消息id列表
    if (msgListRes.code == 0) {
      //查询成功
    }
```

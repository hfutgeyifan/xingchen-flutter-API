---
description: 发送消息已读回执√
---

# sendMessageReadReceipts

## 功能介绍

发送消息已读回执

* 该功能需要购买旗舰版套餐包，购买 [旗舰版套餐包](https://buy.cloud.tencent.com/avc?from=17220) 后可使用。

{% hint style="info" %}
注意：

1. 3.9.3及以上版本支持
2. 该接口暂时只支持 Group 消息。 messageIDList 里的消息Id必须在同一个 Group 会话中。
3. 该接口调用成功后，会话未读数不会变化，消息发送者会收到 [onRecvMessageReadReceipts](../callbacks/onrecvmessagereadreceipts.md) 回调，回调里面会携带消息的最新已读信息。
4. web不支持该接口
{% endhint %}

## 参数详解

| 参数名称          | 参数类型           | 是否必填 | 描述            |
| ------------- | -------------- | ---- | ------------- |
| messageIDList | List< String > | 是    | 需要确认已读的消息id列表 |

## 返回值

```dart
V2TimCallback

{
    code : int
    desc : String
}
```

## 返回值详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |

## 代码示例  &#x20;

```dart
    // 用户首先需要创建一条信息
    V2TimValueCallback<V2TimMsgCreateInfoResult> createCustomMessageRes =
        await TencentImSDKPlugin.v2TIMManager
            .getMessageManager()
            .createCustomMessage(
              data: '正在输入中',
            );
    // 发送消息时，需要把needReadReceipt设置为true
    TencentImSDKPlugin.v2TIMManager.getMessageManager().sendMessage(
        id: createCustomMessageRes.data!.id!,
        receiver: "",
        groupID: "groupID",
        onlineUserOnly: true,
        needReadReceipt: true); // 消息需要已读回执设置
    // 通过消息id确认消息已读
    // 接收端发送消息已读回执后，发送端可以通过 V2TimAdvancedMsgListener 的 onRecvMessageReadReceipts 回调监听消息已读回执通知
    V2TimCallback sendMessageReadReceipts = await TencentImSDKPlugin
        .v2TIMManager
        .getMessageManager()
        .sendMessageReadReceipts(
            messageIDList: [createCustomMessageRes.data!.id!]); // 需要确认已读的消息id
    if (sendMessageReadReceipts.code == 0) {
      // 成功
    } else {
      // 失败
    }

```

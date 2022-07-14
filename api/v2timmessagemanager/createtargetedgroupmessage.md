---
description: 创建一条定向群消息
---

# createTargetedGroupMessage

## API功能介绍

创建一条定向群消息

定向消息是指，向群内部分指定的成员发送消息，而未被指定的群成员无法收到该消息。可以按照下面的方式实现：

1. 调用 `createXXXMessage` (其中 XXX 表示具体的消息类型) 接口创建一条原始消息对象 `V2TIMMessage`。
2. 调用 `createTargetedGroupMessage` 接口根据原始消息对象创建定向消息对象 `V2TimMessage`，并指定消息接收成员列表。
3. 调用 `sendMessage` 接口发送定向消息。

{% hint style="info" %}
注意事项：

1. 仅Flutter sdk 3.8.0 及以上版本支持。
2. 该功能需要购买旗舰版套餐包。
3. 创建定向群消息的原始消息对象不支持群 @ 消息。
4. 社群（Community）和直播群（AVChatRoom）不支持发送定向群消息。
5. 定向群消息默认不计入群会话的未读计数。
{% endhint %}

## 参数详解

| 参数名称         | 参数类型          | 是否必填 | 描述         |
| ------------ | ------------- | ---- | ---------- |
| id           | String        | 是    | 创建的消息的id   |
| receiverList | List\<String> | 是    | 群内部分成员id列表 |

## 返回模板

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

## 返回参数详解

| 名称   | 数值类型                                                          | 描述                                                             |
| ---- | ------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                           | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                        | 请求结果描述                                                         |
| data | [V2TimMsgCreateInfoResult](../../class/v2timsdklistener-1.md) | 创建的合并消息                                                        |

## 使用案例  &#x20;

```dart
// 先创建消息
    V2TimValueCallback<V2TimMsgCreateInfoResult> target = await TencentImSDKPlugin
        .v2TIMManager
        .getMessageManager()
        .createTextMessage(text: "");
// 获取消息的发送id
    String id = target.data.id;
// 创建定向群消息消息
    V2TimValueCallback<V2TimMsgCreateInfoResult> groupTarget = await TencentImSDKPlugin
        .v2TIMManager
        .getMessageManager()
        .createTargetedGroupMessage(
            id: id,
            receiverList: ['user1','user2'],
             );
// 发送定向群消息
    if (groupTarget.code == 0) {
    String groupTargetd = groupTarget.data.id;
     // 发送定向群消息
     // 若只填写groupID则发群组消息
     // 若填写了receiver与groupID则发群内的个人用户，消息在群聊中显示，只有指定receiver能看见
    V2TimValueCallback<V2TimMessage> sendMessageRes = await TencentImSDKPlugin
        .v2TIMManager
        .getMessageManager()
        .sendMessage(id: groupTargetdId, receiver: "userID", groupID: "groupID");
    if (sendMessageRes.code == 0) {
      // 发送成功
    }
  }
```

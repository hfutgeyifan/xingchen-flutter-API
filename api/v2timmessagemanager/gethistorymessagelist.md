---
description: 获取历史消息高级接口√
---

# getHistoryMessageList

## 功能介绍

获取历史消息高级接口

该接口除了支持普通拉取单聊、群聊历史消息外，还支持以下高级特性：

* 支持设置拉取消息的位置：从本地拉取、从云端拉取。
* 支持按照指定的方向拉取：往消息时间更老的方向拉取、往消息时间更新的方向拉取。
* 支持拉取本地指定的消息类型：文本、图片、语音、视频、文件、表情、群 tips 消息、合并消息、自定义消息等。

{% hint style="info" %}
注意：

1. 如果设置为拉取云端消息，当 SDK 检测到没有网络，默认会直接返回本地数据 只有会议群（Meeting）才能拉取到进群前的历史消息，直播群（AVChatRoom）消息不存漫游和本地数据库，调用这个接口无效
2. web 端使用该接口，消息都是从远端拉取，不支持lastMsgSeq
{% endhint %}

## 参数详解

| 参数名称            | 参数类型                                                       | 是否必填 | 描述                                          |
| --------------- | ---------------------------------------------------------- | ---- | ------------------------------------------- |
| getType         | [HistoryMessageGetType](../enums/historymsggettypeenum.md) | 否    | 拉取消息的位置及方向，可以设置拉取 **本地/云端** 的 **更老/更新** 的消息 |
| userID          | String                                                     | 否    | 拉取指定用户的单聊历史消息                               |
| groupID         | String                                                     | 否    | 拉取指定群组的群聊历史消息                               |
| lastMsgSeq      | int                                                        | 否    | 最后一条消息 seq，表示从哪条消息开始拉取历史消息                  |
| count           | int                                                        | 是    | 单次拉取的消息数量                                   |
| lastMsgID       | String                                                     | 否    | lastMsgID                                   |
| messageTypeList | List< int >                                                 | 否    | 用于过滤历史信息属性，若为空则拉取所有属性信息。详情见[MessageElemType](../enums/messageelemtype.md)                    |

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
| data | List< [V2TimMessage](../guan-jian-lei/message/v2timmessage.md) > | 获取的历史消息                                                        |

## 代码示例  &#x20;

```dart
    // 拉取单聊历史消息
    // 首次拉取，lastMsgID 设置为 null
    // 再次拉取时，lastMsgID 可以使用返回的消息列表中的最后一条消息的id
    V2TimValueCallback<List<V2TimMessage>> getHistoryMessageListRes =
        await TencentImSDKPlugin.v2TIMManager
            .getMessageManager()
            .getHistoryMessageList(
      getType: HistoryMsgGetTypeEnum.V2TIM_GET_LOCAL_OLDER_MSG, // 拉取消息的位置及方向
      userID: "userID", // 用户id 拉取单聊消息，需要指定对方的 userID，此时 groupID 传空即可。
      groupID: "groupID", // 群组id 拉取群聊消息，需要指定群聊的 groupID，此时 userID 传空即可。
      count: 10, // 拉取数据数量
      lastMsgID: null, // 拉取起始消息id
      // 仅能在群聊中使用该字段。
      // 设置 lastMsgSeq 作为拉取的起点，返回的消息列表中包含这条消息。
      // 如果同时指定了 lastMsg 和 lastMsgSeq，SDK 优先使用 lastMsg。
      // 如果均未指定 lastMsg 和 lastMsgSeq，拉取的起点取决于是否设置 getTimeBegin。设置了，则使用设置的范围作为起点；未设置，则使用最新消息作为起点。
      lastMsgSeq: -1,
      messageTypeList: [], // 用于过滤历史信息属性，若为空则拉取所有属性信息。
    );
    if (getHistoryMessageListRes.code == 0) {
      //获取成功
    }
```

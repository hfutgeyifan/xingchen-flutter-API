---
description: 获取历史消息高级接口(没有处理Native返回数据)
---

# getHistoryMessageListWithoutFormat

## API功能介绍

获取历史消息高级接口(没有处理Native返回数据)

该接口除了支持普通拉取单聊、群聊历史消息外，还支持以下高级特性：

* 支持设置拉取消息的位置：从本地拉取、从云端拉取。
* 支持按照指定的方向拉取：往消息时间更老的方向拉取、往消息时间更新的方向拉取。

{% hint style="info" %}
请注意：&#x20;

1. 如果设置为拉取云端消息，当 SDK 检测到没有网络，默认会直接返回本地数据 只有会议群（Meeting）才能拉取到进群前的历史消息，直播群（AVChatRoom）消息不存漫游和本地数据库，调用这个接口无效

&#x20; 2\. web不支持该接口
{% endhint %}

## 参数详解

| 参数名称       | 参数类型                                                       | 是否必填 | 描述                                          |
| ---------- | ---------------------------------------------------------- | ---- | ------------------------------------------- |
| getType    | [HistoryMessageGetType](../enums/historymsggettypeenum.md) | 否    | 拉取消息的位置及方向，可以设置拉取 **本地/云端** 的 **更老/更新** 的消息 |
| userID     | String                                                     | 否    | 拉取指定用户的单聊历史消息                               |
| groupID    | String                                                     | 否    | 拉取指定群组的群聊历史消息                               |
| lastMsgSeq | int                                                        | 否    | 最后一条消息 seq，表示从哪条消息开始拉取历史消息                  |
| count      | int                                                        | 是    | 单次拉取的消息数量                                   |
| lastMsgID  | String                                                     | 否    | lastMsgID                                   |

## 返回模板

```dart
LinkedHashMap<dynamic,dynamic>
```

## 返回参数详解

| 名称            | 数值类型                              | 描述                      |
| ------------- | --------------------------------- | ----------------------- |
| LinkedHashMap | LinkedHashMap< dynamic, dynamic > | 获取的历史消息(没有处理Native返回数据) |

## 使用案例  &#x20;

```dart
// 拉取单聊历史消息
// 首次拉取，lastMsgID 设置为 null
// 再次拉取时，lastMsgID 可以使用返回的消息列表中的最后一条消息的id
TencentImSDKPlugin.v2TIMManager.getMessageManager().getHistoryMessageListWithoutFormat(
        getType:HistoryMsgGetTypeEnum.V2TIM_GET_LOCAL_OLDER_MSG,// 拉取消息的位置及方向
        userID: "userID",// 用户id 拉取单聊消息，需要指定对方的 userID，此时 groupID 传空即可。
        groupID: "groupID",// 群组id 拉取群聊消息，需要指定群聊的 groupID，此时 userID 传空即可。
        count: 10,// 拉取数据数量
        lastMsgID: null,// 拉取起始消息id
        // 仅能在群聊中使用该字段。
        // 设置 lastMsgSeq 作为拉取的起点，返回的消息列表中包含这条消息。
        // 如果同时指定了 lastMsg 和 lastMsgSeq，SDK 优先使用 lastMsg。
        // 如果均未指定 lastMsg 和 lastMsgSeq，拉取的起点取决于是否设置 getTimeBegin。设置了，则使用设置的范围作为起点；未设置，则使用最新消息作为起点。
        lastMsgSeq: -1
);
```

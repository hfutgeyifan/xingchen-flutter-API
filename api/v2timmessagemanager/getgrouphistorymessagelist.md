---
description: 获取群组历史消息
---

# getGroupHistoryMessageList

## 功能介绍

获取群组历史消息

* 在网络正常的情况下会拉取最新的云端数据。如果网络出现异常，SDK 会返回本地存储的历史消息。
* 直播群(AVChatRoom): 仅旗舰版支持，可在[控制台开启\[直播群新成员查看入群前消息量配置\]](https://console.cloud.tencent.com/im/login-message)，支持查看24小时内最多20条消息。
* 会议群（Meeting）和 社群（Community）默认开启拉取到进群前的历史消息。
* 好友工作群（Work）和 陌生人社交群（Public）需要前往[控制台](https://console.cloud.tencent.com/im/qun-setting)手动开启。
* 更多关于群消息的限制，详见 [消息能力差异](https://cloud.tencent.com/document/product/269/1502#.E6.B6.88.E6.81.AF.E8.83.BD.E5.8A.9B.E5.B7.AE.E5.BC.82)

{% hint style="info" %}
本地存储的历史消息无时间显示，但云端存储的历史消息有存储时长的限制：

* 体验版：免费存储 7 天，不支持延长
* 专业版：免费存储 7 天，支持延长
* 旗舰版：免费存储 30 条，支持延长
{% endhint %}

## 参数详解

| 参数名称      | 参数类型   | 是否必填 | 描述                                     |
| --------- | ------ | ---- | -------------------------------------- |
| groupID   | String | 是    |  群组id                                  |
| count     | int    | 是    | 拉取消息的个数，不宜太多，会影响消息拉取的速度，这里建议一次拉取 20 个。 |
| lastMsgID | String | 否    | 获取消息的起始消息id，如果传 null，起始消息为会话的最新消息      |

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
| data | List< [V2TimMessage](../guan-jian-lei/message/v2timmessage.md) > | 获取的群组历史消息                                                      |

## 代码示例  &#x20;

```dart
// 拉取单聊历史消息
// 首次拉取，lastMsgID 设置为 null
// 再次拉取时，lastMsgID 可以使用返回的消息列表中的最后一条消息的id
TencentImSDKPlugin.v2TIMManager.getMessageManager().getGroupHistoryMessageList(
        groupID: "groupID",// 单聊用户id
        count: 10,// 拉取数据数量
        lastMsgID: null,// 拉取起始消息id
);
```

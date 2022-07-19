---
description: 获取会话列表
---

# getConversationList

## 功能介绍

获取会话列表

用户的会话以列表的形式返回，列表中存储的是 [`V2TIMConversation`](../guan-jian-lei/message/v2timconversation.md) 对象。目前 IM SDK 对会话列表的排序规则为：

* Flutter sdk 3.8.0及以后版本, 该接口获取的会话列表默认已经按照会话对象的 `orderKey` 做了排序。`orderKey` 值越大，代表该会话排序越靠前。`orderKey` 字段是整型数，当发送新消息、接收新消息、设置草稿或置顶会话时，会话被激活，`orderKey` 字段会增大。
* Flutter sdk 3.8.0 以前版本，该接口获取的会话列表默认已经按照会话 `lastMessage` 的`timestamp` 做了排序。`timestamp` 越大，会话越靠前。

{% hint style="info" %}
注意：

该接口拉取的是本地缓存的会话，如果服务器会话有更新，SDK 内部会自动同步，然后在 [`V2TIMConversationListener`](../guan-jian-lei/listener/v2timconversationlistener.md) 回调告知客户。

在某些场景下，可能出现会话的 `lastMessage` 为空（例如清空会话消息）。如果您使用 5.5.892 以前的 SDK，使用 `lastMessage` 排序时需要额外处理这种异常。我们建议您升级到 5.5.892 及以后的版本，使用 `orderKey` 字段排序。

最多能拉取到最近的5000个会话。
{% endhint %}

## 参数详解

| 参数名称    | 参数类型   | 是否必填 | 描述                                            |
| ------- | ------ | ---- | --------------------------------------------- |
| nextSeq | String | 是    | 分页拉取的游标，第一次默认取传 0，后续分页拉传上一次分页拉取成功回调里的 nextSeq |
| count   | int    | 是    | 分页拉取的个数，一次分页拉取不宜太多，会影响拉取的速度，建议每次拉取 100 个会话    |

## 返回值

```dart
V2TimValueCallback<V2TimConversationResult>

{
    code : int
    desc : String
    data : {
      conversationList : List<V2TimConversation>//此次拉取到的消息列表
      isFinished : bool//是否拉取完
      nextSeq : String//后续分页拉取的游标
    }
}
```

## 返回值详解

| 名称   | 数值类型                                                                           | 描述                                                             |
| ---- | ------------------------------------------------------------------------------ | -------------------------------------------------------------- |
| code | int                                                                            | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                         | 请求结果描述                                                         |
| data | [V2TimConversationResult](../guan-jian-lei/message/v2timconversationresult.md) | 此次拉取到的消息信息                                                     |

## 代码示例

```dart
    //获取会话列表
    V2TimValueCallback<V2TimConversationResult> getConversationListRes =
        await TencentImSDKPlugin.v2TIMManager
            .getConversationManager()
            .getConversationList(
            count: 100, //分页拉取的个数，一次分页拉取不宜太多，会影响拉取的速度，建议每次拉取 100 个会话
            nextSeq: "0"//分页拉取的游标，第一次默认取传 0，后续分页拉传上一次分页拉取成功回调里的 nextSeq
            );
    if (getConversationListRes.code == 0) {
      //拉取成功
      bool? isFinished = getConversationListRes.data?.isFinished;//是否拉取完
      String? nextSeq = getConversationListRes.data?.nextSeq;//后续分页拉取的游标
      List<V2TimConversation?>? conversationList =
          getConversationListRes.data?.conversationList;//此次拉取到的消息列表
      //如果没有拉取完，使用返回的nextSeq继续拉取直到isFinished为true
      if (!isFinished!) {
        V2TimValueCallback<V2TimConversationResult> nextConversationListRes =
            await TencentImSDKPlugin.v2TIMManager
                .getConversationManager()
                .getConversationList(count: 100, nextSeq: nextSeq = "0");//使用返回的nextSeq继续拉取直到isFinished为true
      }

      getConversationListRes.data?.conversationList?.forEach((element) {
        element?.conversationID;//会话唯一 ID，如果是单聊，组成方式为 c2c_userID；如果是群聊，组成方式为 group_groupID。
        element?.draftText;//草稿信息
        element?.draftTimestamp;//草稿编辑时间，草稿设置的时候自动生成。
        element?.faceUrl;//会话展示头像，群聊头像：群头像；单聊头像：对方头像。
        element?.groupAtInfoList;//群会话 @ 信息列表，通常用于展示 “有人@我” 或 “@所有人” 这两种提醒状态。
        element?.groupID;//当前群聊 ID，如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 null。
        element?.groupType;//当前群聊类型，如果会话类型为群聊，groupType 为当前群类型，否则为 null。
        element?.isPinned;//会话是否置顶
        element?.lastMessage;//会话最后一条消息
        element?.orderkey;//会话排序字段
        element?.recvOpt;//消息接收选项
        element?.showName;//会话展示名称，群聊会话名称优先级：群名称 > 群 ID；单聊会话名称优先级：对方好友备注 > 对方昵称 > 对方的 userID。
        element?.type;//会话类型，分为 C2C（单聊）和 Group（群聊）。
        element?.unreadCount;//会话未读消息数，直播群（AVChatRoom）不支持未读计数，默认为 0。
        element?.userID;//对方用户 ID，如果会话类型为单聊，userID 会存储对方的用户 ID，否则为 null。
      });
    }
```

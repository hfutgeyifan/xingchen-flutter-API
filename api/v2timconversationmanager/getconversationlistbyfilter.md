---
description: 获取会话列表的高级接口
---

# getConversationListByFilter

## 功能介绍

获取会话列表的高级接口

## 参数详解

| 参数名称   | 参数类型                                                                                             | 是否必填 | 描述      |
| ------ | ------------------------------------------------------------------------------------------------ | ---- | ------- |
| filter | [V2TimConversationListFilter](../../sdkapi/keyClass/message/v2timconversationlistfilter.md) | 是    | 会话列表过滤器 |

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
| data | [V2TimConversationResult](../keyClass/message/v2timconversationresult.md) | 此次拉取到的消息信息                                                     |

## 代码示例

```dart
    //获取会话列表
    V2TimConversationListFilter filter = V2TimConversationListFilter(
        conversationType: 0,//会话类型
        nextSeq: 0,//拉取游标
        count: 10,//拉取数量
        markType: 0,//会话标记类型
        groupName: "groupName");//拉取的群组名
    //获取会话列表的高级接口
    V2TimValueCallback<V2TimConversationResult> getConversationListByFilterRes =
        await TencentImSDKPlugin.v2TIMManager
            .getConversationManager()
            .getConversationListByFilter(filter: filter);//会话列表过滤器
    if (getConversationListByFilterRes.code == 0) {
      //拉取成功
      bool? isFinished =getConversationListByFilterRes.data?.isFinished; //是否拉取完
      String? nextSeq =getConversationListByFilterRes.data?.nextSeq; //后续分页拉取的游标
      List<V2TimConversation?>? conversationList =getConversationListByFilterRes.data?.conversationList; //此次拉取到的消息列表
      //如果没有拉取完，使用返回的nextSeq继续拉取直到isFinished为true
      if (!isFinished!) {
        V2TimConversationListFilter nextFilter = V2TimConversationListFilter(
            conversationType: 0,
            nextSeq: int.parse(nextSeq!),//使用返回的nextSeq继续拉取直到isFinished为true
            count: 10,
            markType: 0,
            groupName: "groupName");
        V2TimValueCallback<V2TimConversationResult> nextConversationListRes =
            await TencentImSDKPlugin.v2TIMManager
                .getConversationManager()
                .getConversationListByFilter(
                    filter: nextFilter); 
      }

      getConversationListByFilterRes.data?.conversationList?.forEach((element) {
        element
            ?.conversationID; //会话唯一 ID，如果是单聊，组成方式为 c2c_userID；如果是群聊，组成方式为 group_groupID。
        element?.draftText; //草稿信息
        element?.draftTimestamp; //草稿编辑时间，草稿设置的时候自动生成。
        element?.faceUrl; //会话展示头像，群聊头像：群头像；单聊头像：对方头像。
        element?.groupAtInfoList; //群会话 @ 信息列表，通常用于展示 “有人@我” 或 “@所有人” 这两种提醒状态。
        element?.groupID; //当前群聊 ID，如果会话类型为群聊，groupID 会存储当前群的群 ID，否则为 null。
        element?.groupType; //当前群聊类型，如果会话类型为群聊，groupType 为当前群类型，否则为 null。
        element?.isPinned; //会话是否置顶
        element?.lastMessage; //会话最后一条消息
        element?.orderkey; //会话排序字段
        element?.recvOpt; //消息接收选项
        element
            ?.showName; //会话展示名称，群聊会话名称优先级：群名称 > 群 ID；单聊会话名称优先级：对方好友备注 > 对方昵称 > 对方的 userID。
        element?.type; //会话类型，分为 C2C（单聊）和 Group（群聊）。
        element?.unreadCount; //会话未读消息数，直播群（AVChatRoom）不支持未读计数，默认为 0。
        element?.userID; //对方用户 ID，如果会话类型为单聊，userID 会存储对方的用户 ID，否则为 null。
      });
    }
```

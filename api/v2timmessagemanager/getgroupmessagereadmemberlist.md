---
description: 获取群消息已读或未读群成员列表√
---

# getGroupMessageReadMemberList

## 功能介绍

获取群消息已读或未读群成员列表

* 该功能需要购买旗舰版套餐包，购买 [旗舰版套餐包](https://buy.cloud.tencent.com/avc?from=17220) 后可使用。
* 需要到控制台开启，且只支持Work、Public、Meeting群组。且不支持群定向消息。
* 3.9.3及以上版本支持

## 参数详解

| 参数名称      | 参数类型                                                                                   | 是否必填 | 描述         |
| --------- | -------------------------------------------------------------------------------------- | ---- | ---------- |
| messageID | String                                                                                 | 是    | 需要查询的消息的id |
| filter    | [GetGroupMessageReadMemberListFilter](../enums/getgroupmessagereadmemberlistfilter.md) | 是    | 已读或未读的类型   |
| nextSeq   | int                                                                                    | 否    | 分页拉取标志     |
| count     | int                                                                                    | 否    | 拉取数量       |

## 返回值

```dart
V2TimValueCallback<V2TimGroupMessageReadMemberList>

{
    code : int
    desc : String
    data : {
        isFinished : bool
        memberInfoList : V2TimGroupMemberInfo
        nextSeq : int
    }
}
```

## 返回值详解

| 名称   | 数值类型                                                                                         | 描述                                                             |
| ---- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                                          | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                                       | 请求结果描述                                                         |
| data | [V2TimGroupMessageReadMemberList](../keyClass/group/v2timgroupmessagereadmemberlist.md) | 群消息已读或未读群成员列表                                                  |

## 代码示例  &#x20;

```dart
    // 先创建消息
    V2TimValueCallback<V2TimMsgCreateInfoResult> target =
        await TencentImSDKPlugin.v2TIMManager
            .getMessageManager()
            .createTextMessage(text: "test");
    String? groupTargetdId = target.data?.id;

    V2TimValueCallback<V2TimMessage> sendMessageRes =
        await TencentImSDKPlugin.v2TIMManager.getMessageManager().sendMessage(
            id: groupTargetdId!,
            receiver: "",
            needReadReceipt: true,
            groupID: "");

    // 查询消息已读回执
    V2TimValueCallback<List<V2TimMessageReceipt>> getMessageReadReceipts =
        await TencentImSDKPlugin.v2TIMManager
            .getMessageManager()
            .getMessageReadReceipts(
                messageIDList: [sendMessageRes.data!.msgID!]); // 需要查询的的消息id列表
    if (getMessageReadReceipts.code == 0) {
      getMessageReadReceipts.data?.forEach((element) {
        // 解析群消息已读回执
        element.groupID; // 消息的群组id
        element.msgID; // 消息的id
        element.readCount; // 群消息已读人数
        element.timestamp;
        element.unreadCount; // 群消息未读人数
        element.userID; // 发送此消息的用户id
      });
    }
    //需要先调用查询消息已读回执 才能 获取群消息已读或未读群成员列表
    V2TimValueCallback<V2TimGroupMessageReadMemberList>
        getGroupMessageReadMemberList = await TencentImSDKPlugin.v2TIMManager
            .getMessageManager()
            .getGroupMessageReadMemberList(
              nextSeq: 0, // 分页拉取标志，第一次填0，回调成功时若不为0则需要分页，再次传入拉去直到为0
              count: 100, // 拉取数量
              messageID: sendMessageRes.data!.msgID!, // 查询的消息id
              filter: GetGroupMessageReadMemberListFilter
                  .V2TIM_GROUP_MESSAGE_READ_MEMBERS_FILTER_UNREAD, // 已读或未读的类型
            );
    if (getGroupMessageReadMemberList.code == 0) {
      // 获取群消息已读未读群成员列表
      getGroupMessageReadMemberList.data?.isFinished; // 是否拉去完
      getGroupMessageReadMemberList.data?.memberInfoList; // 已读或未读的成员列表
      getGroupMessageReadMemberList.data?.nextSeq; // 分页拉取的 seq 如果为 0 表示拉取结束
    }
```

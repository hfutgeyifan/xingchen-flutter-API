---
description: 获取群成员列表
---

# getGroupMemberList

## API功能介绍

获取群成员列表

* 您可以调用 `getGroupMemberList` 获取指定群的群成员列表。该列表中包含了各个群成员的资料信息。
* 一个群中的成员人数可能很多（例如 5000+），群成员列表的拉取接口支持过滤器（`filter`）和分页拉取（`nextSeq`）两个高级特性。

{% hint style="info" %}
web 端使用时，count 和 offset 为必传参数. filter 和 nextSeq 不生效。

直播群（AVChatRoom）的特殊限制： 不支持管理员角色的拉取，群成员个数最大只支持 31 个（新进来的成员会排前面），程序重启后，请重新加入群组，否则拉取群成员会报 10007 错误码。
{% endhint %}

## 参数详解

| 参数名称    | 参数类型   | 是否必填 | 描述                                                  |
| ------- | ------ | ---- | --------------------------------------------------- |
| groupID | String | 是    | 需要查询的群组 ID                                          |
| filter  | int    | 是    | 查询群成员类型                                             |
| nextSeq | String | 是    | 分页拉取标志，第一次拉取填0，回调成功如果 nextSeq 不为零，需要分页，传入再次拉取，直至为0。 |
| count   | int    | 否    | 需要拉取的数量。最大值：100，避免回包过大导致请求失败。若传入超过100，则只拉取前100个。    |
| offset  | int    | 否    | 偏移量，默认从0开始拉取。                                       |

## 返回模板

```dart
V2TimValueCallback<V2TimGroupMemberInfoResult>

{
    code : int
    desc : String
    data : {
        memberInfoList : List<V2TimGroupMemberFullInfo?>// 拉取到的群成员列表
        nextSeq : String // 分页拉取标志
    }
}
```

## 返回参数详解

| 名称   | 数值类型                                                                                   | 描述                                                             |
| ---- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                                    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                                 | 请求结果描述                                                         |
| data | List< [V2TimGroupMemberFullInfo](../guan-jian-lei/group/v2timgroupmemberfullinfo.md) > | 拉取到的群成员列表表                                                     |

## 使用案例  &#x20;

```dart
    //获取群资料
     V2TimValueCallback<List<V2TimGroupInfoResult>> getGroupsInfoRes =
        await TencentImSDKPlugin.v2TIMManager
            .getGroupManager()
            .getGroupsInfo(groupIDList: []);// 需要查询的群组id列表
    if (getGroupsInfoRes.code == 0) {
      // 查询成功
      getGroupsInfoRes.data?.forEach((element) {
        element.resultCode;// 此群组查询结果码
        element.resultMessage;// 此群查询结果描述
        element.groupInfo?.createTime;// 群创建时间
        element.groupInfo?.customInfo;// 群自定义字段
        element.groupInfo?.faceUrl;// 群头像Url
        element.groupInfo?.groupAddOpt;// 群添加选项设置
        element.groupInfo?.groupID;// 群ID
        element.groupInfo?.groupName;// 群名
        element.groupInfo?.groupType;// 群类型
        element.groupInfo?.introduction;// 群介绍
        element.groupInfo?.isAllMuted;// 群是否全体禁言
        element.groupInfo?.isSupportTopic;// 群是否支持话题
        element.groupInfo?.joinTime;// 当前用户在此群的加入时间
        element.groupInfo?.lastInfoTime;// 最后一次群修改资料的时间
        element.groupInfo?.lastMessageTime;// 最后一次群发消息的时间
        element.groupInfo?.memberCount;// 群员数量
        element.groupInfo?.notification;// 群公告
        element.groupInfo?.onlineCount;// 群在线人数
        element.groupInfo?.owner;// 群主
        element.groupInfo?.recvOpt;// 当前用户在此群中接受信息的选项
        element.groupInfo?.role;// 此用户在群中的角色
      });
    }

```

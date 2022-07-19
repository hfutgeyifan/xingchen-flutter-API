---
description: 获取群成员列表
---

# getGroupMemberList

## 功能介绍

获取群成员列表

* 您可以调用 `getGroupMemberList` 获取指定群的群成员列表。该列表中包含了各个群成员的资料信息。
* 一个群中的成员人数可能很多（例如 5000+），群成员列表的拉取接口支持过滤器（`filter`）和分页拉取（`nextSeq`）两个高级特性。

{% hint style="info" %}
web 端使用时，count 和 offset 为必传参数. filter 和 nextSeq 不生效。

直播群（AVChatRoom）的特殊限制： 不支持管理员角色的拉取，群成员个数最大只支持 31 个（新进来的成员会排前面），程序重启后，请重新加入群组，否则拉取群成员会报 10007 错误码。
{% endhint %}

## 参数详解

| 参数名称    | 参数类型                                                               | 是否必填 | 描述                                                     |
| ------- | ------------------------------------------------------------------ | ---- | ------------------------------------------------------ |
| groupID | String                                                             | 是    | 需要查询的群组 ID                                             |
| filter  | [GroupMemberFilterTypeEnum](../enums/groupmemberfiltertypeenum.md) | 是    | 查询群成员类型                                                |
| nextSeq | String                                                             | 是    | 分页拉取标志，第一次拉取填0，回调成功如果 nextSeq 不为零，需要分页，传入返回值再次拉取，直至为0。 |
| count   | int                                                                | 否    | 需要拉取的数量。最大值：100，避免回包过大导致请求失败。若传入超过100，则只拉取前100个。       |
| offset  | int                                                                | 否    | 偏移量，默认从0开始拉取。                                          |

## 返回值

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

## 返回值详解

| 名称   | 数值类型                                                  | 描述                                                             |
| ---- | ----------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                   | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                | 请求结果描述                                                         |
| data | List< [V2TimGroupMemberFullInfo](broken-reference/) > | 拉取到的群成员列表表                                                     |

## 代码示例

```dart
    // 获取群成员列表
    V2TimValueCallback<V2TimGroupMemberInfoResult> getGroupMemberListRes =
        await TencentImSDKPlugin.v2TIMManager
            .getGroupManager()
            .getGroupMemberList(
                groupID: "groupID",// 需要查询的群组 ID
                filter:GroupMemberFilterTypeEnum.V2TIM_GROUP_MEMBER_FILTER_ADMIN,//查询群成员类型
                nextSeq: "0"// 分页拉取标志，第一次拉取填0，回调成功如果 nextSeq 不为零，需要分页，传入返回值再次拉取，直至为0。
                count: 100,// 需要拉取的数量。最大值：100，避免回包过大导致请求失败。若传入超过100，则只拉取前100个。
                offset:0,// 偏移量，默认从0开始拉取。
                );

    if (getGroupMemberListRes.code == 0) {
      // 拉取成功
      getGroupMemberListRes.data?.memberInfoList?.forEach((element) {
        element?.customInfo;// 群成员自定义字段
        element?.faceUrl;// 头像Url
        element?.friendRemark;// 好友备注
        element?.joinTime;// 群成员入群时间
        element?.muteUntil;// 群成员禁言持续时间
        element?.nameCard;// 群成员名片
        element?.nickName;// 群成员昵称
        element?.role;// 群成员角色
        element?.userID;// 群成员ID
      });
    }
```

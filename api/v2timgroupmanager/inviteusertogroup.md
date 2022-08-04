---
description: 邀请他人入群√
---

# inviteUserToGroup

## 功能介绍

邀请他人入群

* 全体群成员（包括邀请者自己）会收到 [`onMemberInvited`](../callbacks/onmemberinvitedcallback.md) 回调。您可以在这个回调中做一些 UI 上的提示。

{% hint style="info" %}
工作群（Work）：群里的任何人都可以邀请其他人进群。

会议群（Meeting）和公开群（Public）：只有通过rest api 使用 App 管理员身份才可以邀请其他人进群。

直播群（AVChatRoom）：不支持此功能。
{% endhint %}

## 参数详解

| 参数名称     | 参数类型           | 是否必填 | 描述        |
| -------- | -------------- | ---- | --------- |
| groupID  | String         | 是    | 需要加入的群组id |
| userList | List< String > | 是    | 邀请的用户id列表 |

## 返回值

```dart
V2TimValueCallback<List<V2TimGroupMemberOperationResult>>

{
    code : int
    desc : String
    data : List<V2TimGroupMemberOperationResult>
}
```

## 返回值详解

| 名称   | 数值类型                                                                                                 | 描述                                                             |
| ---- | ---------------------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                                                  | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                                               | 请求结果描述                                                         |
| data | List< [V2TimGroupMemberOperationResult](../keyClass/group/v2timgroupmemberoperationresult.md) > | 每一个用户的请求结果                                                     |

## 代码示例

```dart
    // 邀请他人入群
    V2TimValueCallback<List<V2TimGroupMemberOperationResult>>
        inviteUserToGroupRes = await TencentImSDKPlugin.v2TIMManager
            .getGroupManager()
            .inviteUserToGroup(
      groupID: "groupID",// 需要加入的群组id
      userList: [],// 邀请的用户id列表
    );
    if (inviteUserToGroupRes.code == 0) {
      // 邀请成功
      inviteUserToGroupRes.data?.forEach((element) {
        element.memberID;// 被操作成员 ID
        // 邀请结果状态
        // 0:操作失败，1:操作成功，2:无效操作，加群时已经是群成员
        // 3:等待处理，邀请入群时等待对方处理，4:操作失败，创建群指定初始群成员列表或邀请入群时，被邀请者加入的群总数超限
        element.result;// 邀请结果状态
      });
    }
```

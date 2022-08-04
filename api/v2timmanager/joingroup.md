---
description: 加入群组√
---

# joinGroup

## 功能介绍

加入群组

* 工作群（Work）：不能主动入群，只能通过群成员调用 [`V2TIMManager`](./README.md).[`getGroupManager`](getgroupmanager.md)().[`inviteUserToGroup`](../v2timgroupmanager/inviteusertogroup.md)()接口邀请入群。
* 公开群（Public）：申请入群后，根据群组的[groupAddOpt](../keyClass/group/v2timgroupinfo.md)确定是否需要审批。如果需要，管理员在收到 [V2TIMGroupListener](../keyClass/listener/v2timgrouplistener.md) 的 [`onReceiveJoinApplication`](../callbacks/onreceivejoinapplicationcallback.md) 回调后调用 [`V2TIMManager`](./README.md).[`getGroupManager`](getgroupmanager.md)().[`getGroupApplicationList`](../v2timgroupmanager/getgroupapplicationlist.md)()接口处理加群请求。
* 其他群：可以直接入群。

{% hint style="info" %}
注意：

当在web端时，加入直播群时groupType字段必填
{% endhint %}

## 参数详解

| 参数名称      | 参数类型                               | 是否必填 | 描述        |
| --------- | ---------------------------------- | ---- | --------- |
| groupID   | String                             | 是    | 需要加入群组 ID |
| message   | String                             | 是    | 加群申请信息    |
| groupType | [GroupType](../enums/grouptype.md) | 否    | 群类型       |

## 返回值

```dart
V2TimCallback

{
    code : int
    desc : String
}
```

## 返回值详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |

## 代码示例  &#x20;

```dart
    // 加入群组
    V2TimCallback joinGroupRes = await TencentImSDKPlugin.v2TIMManager
        .joinGroup(
          groupID: "groupID",// 需要加入群组 ID
          message: "hello", // 加群申请信息
          groupType: "Public");// 群类型
    if (joinGroupRes.code == 0) {
      // 加入成功
    }
```

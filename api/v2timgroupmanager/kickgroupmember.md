---
description: 踢人√
---

# kickGroupMember

## 功能介绍

踢人

* 普通群成员被踢后，全员（包括被踢人）会收到 [`onMemberKicked`](../callbacks/onmemberkickedcallback.md) 回调。
* 由于直播群（AVChatRoom）对进群没有限制，因此直播群（AVChatRoom）没有支持踢人的接口，您可以使用 [`muteGroupMember`](mutegroupmember.md) 禁言指定成员达到类似的成员管控的目的。

{% hint style="info" %}
工作群（Work）：只有群主或 APP 管理员可以踢人。

公开群（Public）、会议群（Meeting）：群主、管理员和 APP 管理员可以踢人 。

直播群（AVChatRoom）：只支持禁言（[muteGroupMember](mutegroupmember.md)），不支持踢人。
{% endhint %}

## 参数详解

| 参数名称       | 参数类型           | 是否必填 | 描述        |
| ---------- | -------------- | ---- | --------- |
| groupID    | String         | 是    | 需要踢人的群组id |
| memberList | List< String > | 是    | 踢出的用户id列表 |
| reason     | String         | 否    | 踢出原因      |

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

## 代码示例

```dart
    //群组踢人
    V2TimCallback kickGroupMemberRes =
        await TencentImSDKPlugin.v2TIMManager.getGroupManager().kickGroupMember(
            groupID: "groupID", // 需要踢人的群组id
            memberList: [], // 踢出的用户id列表
            reason: "" // 踢出原因
            );
    if (kickGroupMemberRes.code == 0) {
      // 踢出成功
    }
```

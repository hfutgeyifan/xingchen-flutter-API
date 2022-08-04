---
description: 创建一个信令请求√
---

# addInvitedSignaling

## 功能介绍

创建一个信令请求

## 参数详解

| 参数名称 | 参数类型                                                                 | 是否必填 | 描述         |
| ---- | -------------------------------------------------------------------- | ---- | ---------- |
| info | [V2TimSignalingInfo](../keyClass/message/v2timsignalinginfo.md) | 是    | 创建的信令消息的设置 |

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
    //创建的信令消息的设置
    V2TimSignalingInfo info = V2TimSignalingInfo(
        //信令状态
        //1:邀请方发起邀请
        //2:邀请方取消邀请
        //3:被邀请方接受邀请
        //4:被邀请方拒绝邀请
        //5:邀请超时
        actionType: 1,//信令状态
        businessID: 1,//传1即可
        data: "",//信令的自定义消息
        groupID: "",//发出信令的群组id
        inviteeList: [],//信令接收人列表
        inviteID: "",//邀请ID
        timeout: 30,//信令超时时间
        inviter: "",//邀请人ID
        isOnlineUserOnly: false,//是否只发送给在线用户
        offlinePushInfo: V2TimOfflinePushInfo());//离线消息推送设置
    V2TimCallback addInvitedSignalingRes = await TencentImSDKPlugin.v2TIMManager
        .getSignalingManager()
        .addInvitedSignaling(info: info);//创建的信令消息的设置
    if (addInvitedSignalingRes.code == 0) {
      //创建成功
    }
```

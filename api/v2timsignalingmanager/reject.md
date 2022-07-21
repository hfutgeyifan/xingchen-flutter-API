---
description: 接收方拒绝邀请√
---

# reject

## 功能介绍

接收方拒绝邀请

## 参数详解

| 参数名称     | 参数类型   | 是否必填 | 描述            |
| -------- | ------ | ---- | ------------- |
| inviteID | String | 是    | 邀请请求的id       |
| data     | String | 是    | 拒绝邀请时发送的自定义消息 |

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
      //设置信令监听器
      V2TimSignalingListener listener = V2TimSignalingListener(
      onInvitationCancelled:
          (String inviteID, String inviter, String data) async {},
      onInvitationTimeout: (String inviteID, List<String> inviteeList) async {},
      onInviteeAccepted:
          (String inviteID, String invitee, String data) async {},
      onInviteeRejected:
          (String inviteID, String invitee, String data) async {},
      onReceiveNewInvitation: (String inviteID, String inviter, String groupID,
          List<String> inviteeList, String data) async {
        //获取新的邀请的回调
        //inviteID 邀请消息信令id
        //inviter 邀请人id
        //groupID 发出邀请的群组id
        //inviteeList 被邀请人的列表
        //data 邀请时的自定义data
        V2TimCallback rejectRes = await TencentImSDKPlugin.v2TIMManager
            .getSignalingManager()
            .reject(
              inviteID: inviteID,//邀请消息信令id
              data: "");//拒绝邀请时发送的自定义消息
        if (rejectRes.code == 0) {
          //拒绝邀请成功
        }
      },
    );
    TencentImSDKPlugin.v2TIMManager
        .getSignalingManager()
        .addSignalingListener(listener: listener);
```

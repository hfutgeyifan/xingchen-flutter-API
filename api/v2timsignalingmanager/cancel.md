---
description: 邀请方取消邀请
---

# cancel

## 功能介绍

邀请方取消邀请

## 参数详解

| 参数名称    | 参数类型   | 是否必填 | 描述           |
| ------- | ------ | ---- | ------------ |
| invitee | String | 是    | 被取消邀请的id     |
| data    | String | 是    | 取消邀请时附带的定义消息 |

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
          (String inviteID, String inviter, String data) async {
        //邀请被取消的回调
        //inviteID 邀请消息信令id
        //inviter 邀请人id
        //data 邀请被取消时的自定义data
      },
      onInvitationTimeout: (String inviteID, List<String> inviteeList) async {},
      onInviteeAccepted:
          (String inviteID, String invitee, String data) async {},
      onInviteeRejected:
          (String inviteID, String invitee, String data) async {},
      onReceiveNewInvitation: (String inviteID, String inviter, String groupID,
          List<String> inviteeList, String data) async {},
    );
    TencentImSDKPlugin.v2TIMManager
        .getSignalingManager()
        .addSignalingListener(listener: listener);

    V2TimCallback cancelRes = await TencentImSDKPlugin.v2TIMManager
        .getSignalingManager()
        .cancel(
          inviteID: "inviteID",//被取消邀请的id
          data: "");//取消邀请时附带的定义消息
    if (cancelRes.code == 0) {
      //取消成功
    }
```

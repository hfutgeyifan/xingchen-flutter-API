---
description: 信令入口√
---

# getSignalingManager

## 功能介绍

信令入口

* 信令功能方法在核心类 `TencentImSDKPlugin.v2TIMManager.getSignalingManager()`中。

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回值

```dart
V2TIMSignalingManager
```

## 返回值详解

| 名称                    | 数值类型                                               | 描述   |
| --------------------- | -------------------------------------------------- | ---- |
| V2TIMSignalingManager | [V2TIMSignalingManager](../v2timsignalingmanager/README.md) | 信令入口 |

## 代码示例  &#x20;

```dart
      // 使用getSignalingManager设置信令监听器与创建邀请的案例
      //设置信令监听器
      V2TimSignalingListener listener = V2TimSignalingListener(
      onInvitationCancelled:
          (String inviteID, String inviter, String data) async {},
      onInvitationTimeout: (String inviteID, List<String> inviteeList) async {
        //邀请超时的回调
        //inviteID 邀请消息信令id
        //inviteeList 被邀请人的列表
      },
      onInviteeAccepted: (String inviteID, String invitee, String data) async {
        //邀请被接受的回调
        //inviteID 邀请消息信令id
        //inviter 被邀请人id
        //data 接受邀请时的自定义data
      },
      onInviteeRejected: (String inviteID, String invitee, String data) async {
        //邀请被拒绝的回调
        //inviteID 邀请消息信令id
        //inviter 被邀请人id
        //data 拒绝邀请时的自定义data
      },
      onReceiveNewInvitation: (String inviteID, String inviter, String groupID,
          List<String> inviteeList, String data) async {
        //获取新的邀请的回调
        //inviteID 邀请消息信令id
        //inviter 邀请人id
        //groupID 发出邀请的群组id
        //inviteeList 被邀请人的列表
        //data 邀请时的自定义data
      },
    );
    TencentImSDKPlugin.v2TIMManager
        .getSignalingManager()
        .addSignalingListener(listener: listener); //添加信令监听器

    V2TimValueCallback<String> inviteRes = await TencentImSDKPlugin.v2TIMManager
        .getSignalingManager()
        .invite(
            invitee: "",//被邀请人id
            data: "data",//邀请时附带的定义消息
            timeout: 30,//邀请超时时间
            onlineUserOnly: false,//是否只发给在线用户
            offlinePushInfo: OfflinePushInfo());//离线推送设置
    if (inviteRes.code == 0) {
      //创建邀请成功
      String? inviteId = inviteRes.data;//创建的邀请id
    }
```

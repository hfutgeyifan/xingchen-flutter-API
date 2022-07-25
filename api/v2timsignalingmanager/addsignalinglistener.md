---
description: 添加信令监听器√
---

# addSignalingListener

## 功能介绍

添加信令监听器

信令接口是基于 IM 消息提供的一套邀请流程控制的接口，可以实现多种实时场景，例如：

* 直播聊天室中进行上麦、下麦管理。
* 聊天场景中实现类似微信中的音视频通话功能。
* 教育场景中老师邀请同学们举手、发言的流程控制。

{% hint style="info" %}
注意：

使用addSignalingListener会在所有的信令监听器列表中新增一个信令监听器。
{% endhint %}

## 参数详解

| 参数名称     | 参数类型                                                                          | 是否必填 | 描述    |
| -------- | ----------------------------------------------------------------------------- | ---- | ----- |
| listener | [V2TimSignalingListener](../guan-jian-lei/listener/v2timsignalinglistener.md) | 是    | 信令监听器 |

## 返回值

```dart
void
```

## 返回值详解

{% hint style="info" %}
此方法无返回值
{% endhint %}

## 代码示例

```dart
      //设置信令监听器
      V2TimSignalingListener listener = V2TimSignalingListener(
      onInvitationCancelled: (String inviteID, String inviter, String data) async {
        //邀请被取消的回调
        //inviteID 邀请消息信令id
        //inviter 邀请人id
        //data 邀请被取消时的自定义data
      },
      onInvitationTimeout: (String inviteID, List<String> inviteeList) async {
        //邀请超时的回调
        //inviteID 邀请消息信令id
        //inviteeList 被邀请人的列表
      },
      onInviteeAccepted: (String inviteID, String invitee, String data) async {
        //邀请被接受的回调
        //inviteID 邀请消息信令id
        //invitee 被邀请人id
        //data 接受邀请时的自定义data
      },
      onInviteeRejected: (String inviteID, String invitee, String data) async {
        //邀请被拒绝的回调
        //inviteID 邀请消息信令id
        //invitee 被邀请人id
        //data 拒绝邀请时的自定义data
      },
      onReceiveNewInvitation: (String inviteID, String inviter, String groupID,
              List<String> inviteeList, String data) async
          {
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
        .addSignalingListener(listener: listener);//添加信令监听器
```

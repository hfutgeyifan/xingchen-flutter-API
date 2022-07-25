---
description: 邀请被拒绝的回调
---

# OnInviteeRejectedCallback

## 功能介绍

邀请被拒绝的回调

## 回调函数模版

```dart
OnInviteeRejectedCallback = void Function(
String inviteID,
String invitee,
String data
)
```

## 参数详解

| 参数名称     | 参数类型    | 参数描述          |
| -------- | ------- | ------------- |
| inviteID | String  | 邀请消息信令id      |
| invitee  | String  | 被邀请人id        |
| data     | String  | 拒绝邀请时的自定义data |

## 代码示例

```dart
    //设置信令监听器
    V2TimSignalingListener listener = V2TimSignalingListener(
      onInviteeRejected: (String inviteID, String invitee, String data) async {
        //邀请被拒绝的回调
        //inviteID 邀请消息信令id
        //invitee 被邀请人id
        //data 拒绝邀请时的自定义data
      }
    );
    TencentImSDKPlugin.v2TIMManager
        .getSignalingManager()
        .addSignalingListener(listener: listener); //添加信令监听器
```


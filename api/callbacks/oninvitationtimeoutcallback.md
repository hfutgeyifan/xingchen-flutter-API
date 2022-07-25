---
description: 邀请超时的回调
---

# OnInvitationTimeoutCallback

## 功能介绍

邀请超时的回调

## 回调函数模版

```dart
OnInvitationTimeoutCallback = void Function(
String inviteID,
List<String> inviteeList
)
```

## 参数详解

| 参数名称        | 参数类型           | 参数描述      |
| ----------- | -------------- | --------- |
| inviteID    | String         | 邀请消息信令id  |
| inviteeList | List< String > | 被邀请人的id列表 |

## 代码示例

```dart
    //设置信令监听器
    V2TimSignalingListener listener = V2TimSignalingListener(
      onInvitationTimeout: (String inviteID, List<String> inviteeList) async {
        //邀请超时的回调
        //inviteID 邀请消息信令id
        //inviteeList 被邀请人的列表
      }
    );
    TencentImSDKPlugin.v2TIMManager
        .getSignalingManager()
        .addSignalingListener(listener: listener); //添加信令监听器
```


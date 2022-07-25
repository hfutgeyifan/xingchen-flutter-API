---
description: 邀请被取消的回调
---

# OnInvitationCancelledCallback

## 功能介绍

邀请被取消的回调

## 回调函数模版

```dart
OnInvitationCancelledCallback = void Function(
String inviteID,
String inviter,
String data
)
```

## 参数详解

| 参数名称     | 参数类型   | 参数描述           |
| -------- | ------ | -------------- |
| inviteID | String | 邀请消息信令id       |
| inviter  | String | 邀请人id          |
| data     | String | 邀请被取消时的自定义data |

## 代码示例

```dart
    //设置信令监听器
    V2TimSignalingListener listener = V2TimSignalingListener(
      onInvitationCancelled:
          (String inviteID, String inviter, String data) async {
        //邀请被取消的回调
        //inviteID 邀请消息信令id
        //inviter 邀请人id
        //data 邀请被取消时的自定义data
      }
    );
    TencentImSDKPlugin.v2TIMManager
        .getSignalingManager()
        .addSignalingListener(listener: listener); //添加信令监听器
```


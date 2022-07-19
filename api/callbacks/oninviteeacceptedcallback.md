---
description: 邀请被接受的回调
---

# OnInviteeAcceptedCallback

## 回调函数功能描述

邀请被接受的回调

## 回调函数模版

```dart
OnInviteeAcceptedCallback = void Function(
String inviteID,
String invitee,
String data
)
```

## 回调函数参数说明

| 参数名称     | 参数类型    | 参数描述          |
| -------- | ------- | ------------- |
| inviteID | String  | 邀请消息信令id      |
| invitee  | String  | 被邀请人id        |
| data     | String  | 接受邀请时的自定义data |

## 代码示例

```dart
    //设置信令监听器
    V2TimSignalingListener listener = V2TimSignalingListener(
      onInviteeAccepted: (String inviteID, String invitee, String data) async {
        //邀请被接受的回调
        //inviteID 邀请消息信令id
        //invitee 被邀请人id
        //data 接受邀请时的自定义data
      }
    );
    TencentImSDKPlugin.v2TIMManager
        .getSignalingManager()
        .addSignalingListener(listener: listener); //添加信令监听器
```


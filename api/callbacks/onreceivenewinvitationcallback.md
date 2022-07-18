---
description: 获取新的邀请的回调
---

# OnReceiveNewInvitationCallback

## 回调函数功能描述

获取新的邀请的回调

## 回调函数模版

```dart
OnReceiveNewInvitationCallback = void Function(
String inviteID,
String inviter,
String groupID,
List<String> inviteeList,
String data
)
```

## 回调函数参数说明

| 参数名称        | 参数类型           | 参数描述        |
| ----------- | -------------- | ----------- |
| inviteID    | String         | 邀请消息信令id    |
| inviter     | String         | 邀请人id       |
| groupID     | String         | 发出邀请的群组id   |
| inviteeList | List< String > | 被邀请人的列表     |
| data        | String         | 邀请时的自定义data |

## 使用案例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onReceiveNewInvitation: (String inviteID, String inviter, String groupID,
          List<String> inviteeList, String data) async {
        //获取新的邀请的回调
        //inviteID 邀请消息信令id
        //inviter 邀请人id
        //groupID 发出邀请的群组id
        //inviteeList 被邀请人的列表
        //data 邀请时的自定义data
      }
    );
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```


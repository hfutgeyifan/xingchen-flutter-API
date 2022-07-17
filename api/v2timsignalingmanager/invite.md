---
description: 邀请某个人
---

# invite

## API功能介绍

邀请某个人

## 参数详解

| 参数名称            | 参数类型                                              | 是否必填 | 描述         |
| --------------- | ------------------------------------------------- | ---- | ---------- |
| invitee         | String                                            | 是    | 被邀请人id     |
| data            | String                                            | 是    | 邀请时附带的定义消息 |
| timeout         | int                                               | 否    | 邀请超时时间     |
| onlineUserOnly  | bool                                              | 否    | 是否只发给在线用户  |
| offlinePushInfo | [OfflinePushInfo](../../class/offlinepushinfo.md) | 否    | 离线推送设置     |

## 返回模板

```dart
V2TimValueCallback<String>

{
    code : int
    desc : String
    data : String//创建的邀请id
}
```

## 返回参数详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |
| data | String | 创建的邀请id                                                        |

## 使用案例  &#x20;

```dart
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

---
description: 获取信令信息
---

# getSignalingInfo

## API功能介绍

获取信令信息

* 如果 invite 设置 onlineUserOnly 为 false，每次信令操作（包括 invite、cancel、accept、reject、timeout）都会产生一条自定义消息， 该消息会通过 V2TIMAdvancedMsgListener -> onRecvNewMessage 抛给用户，用户也可以通过历史消息拉取，如果需要根据信令信息做自定义化文本展示，可以调用下面接口获取信令信息。
* 如果返回值为 null，则查询的 msg 不是一条信令消息。

## 参数详解

| 参数名称  | 参数类型   | 是否必填 | 描述      |
| ----- | ------ | ---- | ------- |
| msgID | String | 是    | 信令消息的id |

## 返回模板

```dart
V2TimValueCallback<V2TimSignalingInfo>
{
    code : int
    desc : String
    data : {
          inviteID : String// 邀请ID
          inviter : String // 邀请人ID
          inviteeList : List<dynamic>//信令接收人列表
          groupID : String//发出信令的群组id
          data : String//信令的自定义消息
          timeout : int//信令超时时间
          actionType : int//信令状态
          businessID : int // ios不回返回这条
          isOnlineUserOnly : bool //是否只发送给在线用户 ios不回返回这条
          offlinePushInfo : V2TimOfflinePushInfo //离线消息推送设置 ios不回返回这条
    }
}
```

## 返回参数详解

| 名称   | 数值类型                                                    | 描述                                                             |
| ---- | ------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                     | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                  | 请求结果描述                                                         |
| data | [V2TimSignalingInfo](../../class/v2timsignalinginfo.md) | 查询到的信令信息                                                       |

## 使用案例  &#x20;

```dart
    //获取信令信息
    V2TimValueCallback<V2TimSignalingInfo> getSignalingInfoRes =
        await TencentImSDKPlugin.v2TIMManager
            .getSignalingManager()
            .getSignalingInfo(msgID: "msgID");//信令消息的id
    if (getSignalingInfoRes.code == 0) {
      //查询成功
      
      //信令状态
      //1:邀请方发起邀请
      //2:邀请方取消邀请
      //3:被邀请方接受邀请
      //4:被邀请方拒绝邀请
      //5:邀请超时
      getSignalingInfoRes.data?.actionType;//信令状态
      getSignalingInfoRes.data?.businessID;//传1即可
      getSignalingInfoRes.data?.data;//信令的自定义消息
      getSignalingInfoRes.data?.groupID;//发出信令的群组id
      getSignalingInfoRes.data?.inviteID;//邀请ID
      getSignalingInfoRes.data?.inviteeList;//信令接收人列表
      getSignalingInfoRes.data?.inviter;//邀请人ID
      getSignalingInfoRes.data?.isOnlineUserOnly;//是否只发送给在线用户 ios不回返回这条
      getSignalingInfoRes.data?.offlinePushInfo;//离线消息推送设置 ios不回返回这条
      getSignalingInfoRes.data?.timeout;//信令超时时间
    }
```

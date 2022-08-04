## 概述
信令接口是基于 IM 消息提供的一套邀请流程控制的接口，可以实现多种实时场景，例如：
- 直播聊天室中进行上麦、下麦管理。
- 聊天场景中实现类似微信中的音视频通话功能。
- 教育场景中老师邀请同学们举手、发言的流程控制。

## 功能 
信令接口支持以下功能：
### 单聊邀请
在使用简单收发消息接口或富媒体消息接口进行单聊的同时，可以使用 [invite](../../../api/v2timsignalingmanager/invite.md) 信令接口进行点对点呼叫，对方收到邀请通知 [onReceiveNewInvitation](../../../api/callbacks/onreceivenewinvitationcallback.md) 后可以选择接受、拒绝或等待超时。

### 群聊邀请
首先需通过 `建群`、`退群`、`解散群`以及`群资料`和`群成员`相关接口完成对群组的管理，并监听群内的相关事件回调 [V2TimGroupListener](../../../api/guan-jian-lei/listener/v2timgrouplistener.md)。然后群成员可以在群内发起群呼叫邀请 [inviteInGroup](../../../api/v2timsignalingmanager/inviteingroup.md)，被邀请的群成员会收到邀请通知 [onReceiveNewInvitation](../../../api/callbacks/onreceivenewinvitationcallback.md) 后可以选择接受、拒绝或等待超时。
### 取消邀请
邀请者可以在超时前且被邀请者未处理前取消邀请 [cancel](../../../api/v2timsignalingmanager/cancel.md)。被邀请者会收到取消通知 [onInvitationCancelled](../../../api/callbacks/oninvitationcancelledcallback.md)，该邀请流程结束。

![](https://qcloudimg.tencent-cloud.cn/raw/329f9386b56c265f80451c5ee05bcba5.png)

### 接受邀请
被邀请者收到邀请通知 [onReceiveNewInvitation](../../../api/callbacks/onreceivenewinvitationcallback.md) 后可以在超时前且邀请者取消前接受邀请 [accept](../../../api/v2timsignalingmanager/accept.md)，邀请者会收到接受邀请通知 [onInviteeAccepted](../../../api/callbacks/oninviteeacceptedcallback.md)，所有被邀请者处理完后（包括接受、拒绝、超时）该邀请流程结束。

![](https://qcloudimg.tencent-cloud.cn/raw/90c2884f71a358d271c3543dc27a387f.png)

### 拒绝邀请
被邀请者收到邀请通知 [onReceiveNewInvitation](../../../api/callbacks/onreceivenewinvitationcallback.md)后可以在超时前且邀请者取消前拒绝邀请 [reject](../../../api/v2timsignalingmanager/reject.md)，邀请者会收到拒绝邀请通知 [onInviteeRejected](../../../api/callbacks/oninviteerejectedcallback.md)，所有被邀请者处理完后（包括接受、拒绝、超时）该邀请流程结束。
### 邀请超时
若邀请接口的超时时间大于0，且被邀请者未在超时时间之内响应则邀请超时，邀请者和被邀请者都会收到超时通知 [onInvitationTimeout](../../../api/callbacks/oninvitationtimeoutcallback.md)，所有被邀请者处理完后（包括接受、拒绝、超时）该邀请流程结束。若邀请接口的超时时间等于0，则不会有超时通知。

![](https://qcloudimg.tencent-cloud.cn/raw/956ddcd6218453a86e5c3cdef83d9a06.png)

## 应用场景案例
### 音视频通话
在开源项目 [TRTCFlutterScenesDemo](https://github.com/tencentyun/TRTCFlutterScenesDemo) 中，我们基于 [TRTC 组件](https://cloud.tencent.com/document/product/647/56295) 并对其稍作修改提供了一个适合聊天场景的 1v1 和多人音视频通话的方案，您可以直接基于我们提供的 Demo 进行修改适配。我们以 1v1 视频通话为例介绍下信令接口跟 TRTC SDK 的结合使用。

**1v1 视频通话的流程：**
1. 邀请者根据业务层生成的 roomID 进入该 TRTC 房间，同时调用信令邀请接口 [invite](../../../api/v2timsignalingmanager/invite.md) 发起音视频通话请求，并把 roomID 放到邀请接口的自定义字段中。
2. 被邀请者收到信令邀请通知 [onReceiveNewInvitation](../../../api/callbacks/onreceivenewinvitationcallback.md)，并通过自定义数据拿到 roomID，界面开始响铃。
3. 被邀请者处理邀请通知：
 - 接受邀请需调用信令 [accept](../../../api/v2timsignalingmanager/accept.md) 接口，并根据 roomID 进入到 TRTC 房间，并同时调用 openCamera() 函数打开自己本地的摄像头，双方收到 TRTC SDK 的 `onRemoteUserEnterRoom` 回调后记录本次通话的开始时间。
 - 拒绝邀请需调用信令 [reject](../../../api/v2timsignalingmanager/reject.md) 接口结束本次通话。
 - 如果被邀请者正在跟其他人通话，则调用信令 [reject](../../../api/v2timsignalingmanager/reject.md) 接口拒绝本次邀请，并在自定义数据中告诉对方是由于本地线路忙而拒绝。
4. 接听并当双方的音视频通道建立完成后，通话的双方都会接收到 TRTC SDK 的 `onUserVideoAvailable` 的事件通知，表示对方的视频画面已经拿到。此时双方用户均可以调用 TRTC SDK 接口 `startRemoteView` 展示远端的视频画面。远端的声音默认是自动播放的。
5. 通话结束即某一方挂断电话，该用户退出 TRTC 房间。对方收到 TRTC SDK 的 `onRemoteUserLeaveRoom` 回调后计算通话总时长并再次发起一次邀请，此邀请的自定义数据中标明是结束通话并附带通话时长，方便 UI 界面做展示。

**时序图**
![](https://qcloudimg.tencent-cloud.cn/raw/71bc2af7725ea31b16fa22e51e96b7bd.png)

### 教育场景中老师邀请学生举手发言
该场景为老师先让同学们举手，再从举手的同学中选一个同学进行发言。详细流程如下：
1. 老师调用 [inviteInGroup](../../../api/v2timsignalingmanager/inviteingroup.md) 接口邀请同学们举手，自定义 `data` 中填入“举手操作”，同学们收到 [onReceiveNewInvitation](../../../api/callbacks/onreceivenewinvitationcallback.md) 回调。
2. 同学们根据 [onReceiveNewInvitation](../../../api/callbacks/onreceivenewinvitationcallback.md) 中的 `inviteeList` 和 `data` 字段判断被邀请者里有自己且是举手操作，那么调用  [accept](../../../api/v2timsignalingmanager/accept.md) 接口举手。
3. 如果有学生举手，所有人都可以收到 [onInviteeAccepted](../../../api/callbacks/oninviteeacceptedcallback.md) 回调，判断 `data` 中的字段为“举手操作”，展示举手学生列表。
4. 老师从举手成员列表中邀请某个同学进行发言，调用  [inviteInGroup](../../../api/v2timsignalingmanager/inviteingroup.md) 接口，此时自定义 `data` 中填入“发言操作”，学生们都收到 [onReceiveNewInvitation](../../../api/callbacks/onreceivenewinvitationcallback.md) 回调。
5. 学生根据  [onReceiveNewInvitation](../../../api/callbacks/onreceivenewinvitationcallback.md) 回调中的 `inviteeList` 和 `data` 字段判断被邀请者里有自己且是发言操作，则调用 [accept](../../../api/v2timsignalingmanager/accept.md) 接口发言。
6. 如果有学生发言，所有人都可以收到  [onInviteeAccepted](../../../api/callbacks/oninviteeacceptedcallback.md) 回调，判断 `data` 中的字段为“发言操作”，展示发言成员列表。

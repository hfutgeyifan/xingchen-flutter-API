## 功能描述
IM SDK 支持好友的管理，用户可以主动添加、删除好友，也可以设置仅针对好友才能发送消息。

### 获取好友列表
IM SDK 支持好友关系链逻辑，您可以调用 [`getFriendList`](../../../api/v2timfriendshipmanager/getfriendlist.md) 接口获取好友列表。

示例代码如下：


```dart
// 获取好友列表
V2TimValueCallback<List<V2TimFriendInfo>> friendsList = await friendshipManager.getFriendList();
```



### 添加好友
您可以调用 [`addFriend`](../../../api/v2timfriendshipmanager/addfriend.md) 接口添加好友。

示例代码如下：


```dart
// 添加双向好友
V2TimValueCallback<V2TimFriendOperationResult> addFriend = await friendshipManager.addFriend(userID: "userID",remark:"加好友的备注",addWording:"附言",addType:FriendTypeEnum.V2TIM_FRIEND_TYPE_BOTH);
```


根据对方用户资料中的加好友需要验证与否，可以分为两种处理流程：

#### 第一种：加好友不需要对方验证
1. 用户 A 和 B 调用 [`setFriendListener`](../../../api/v2timfriendshipmanager/setfriendlistener.md) 设置关系链监听器。

2. 用户 B 通过 [`setSelfInfo`](../../../api/v2timmanager/setselfinfo.md) 函数里的 `allowType`字段设置为加好友不需要验证（`V2TIM_FRIEND_ALLOW_ANY`）。

3. 用户 A 调用 `addFriend` 申请添加 B 为好友即可添加成功。添加成功后，按照申请参数 `V2TIMFriendAddApplication` 中 `addType` 的设置有两种情况：
   * 如果设置为双向好友 (`V2TIM_FRIEND_TYPE_BOTH`) ，则用户 A 和 B 都会收到 [`onFriendListAdded`](../../../api/callbacks/onfriendlistaddedcallback.md)回调；
   * 如果设置为单向好友（`V2TIM_FRIEND_TYPE_SINGLE`），则只有用户 A 收到 [`onFriendListAdded`](../../../api/callbacks/onfriendlistaddedcallback.md) 回调。


#### 第二种：加好友需要通过对方验证
1. 用户 A 和 B 调用 `setFriendListener` 设置关系链监听。

2. 用户 B 通过 `setSelfInfo` 函数里的 `allowType` 字段设置为加好友需要验证（`V2TIM_FRIEND_NEED_CONFIRM`）。 
   
3. 用户 A 调用  `addFriend` 申请添加 B 为好友，接口的成功回调参数中 `resultCode` 返回 30539，表示需要等待用户 B 的验证。同时 A 和 B 都会收到 [`onFriendApplicationListAdded`](../../../api/callbacks/onfriendapplicationlistaddedcallback.md) 的回调。
   
4. 用户 B 会收到 [`onFriendApplicationListAdded`](../../../api/callbacks/onfriendapplicationlistaddedcallback.md) 的回调，当参数 [`V2TIMFriendApplication`](../../../api/keyClass/user/v2timfriendapplication.md) 中的 `type` 为 `V2TIM_FRIEND_APPLICATION_COME_IN` 时，可以选择接受或者拒绝：
    - B 调用 [`acceptFriendApplication`](../../../api/v2timfriendshipmanager/acceptfriendapplication.md)接受好友请求。如果参数接受类型为仅同意加单向好友（`V2TIM_FRIEND_ACCEPT_AGREE`）时:
      - A 会收到 [`onFriendListAdded`](../../../api/callbacks/onfriendlistaddedcallback.md) 回调，说明单向加好友成功。
      - B 会收到 [`onFriendApplicationListDeleted`](../../../api/callbacks/onfriendapplicationlistdeletedcallback.md)回调，此时 B 成为 A 的好友，但 A 仍不是 B 的好友。
    - B 调用 `acceptFriendApplication`](../../../api/v2timfriendshipmanager/acceptfriendapplication.md) 接受好友请求，如果参数接受类型为同意加双向好友时（`V2TIM_FRIEND_ACCEPT_AGREE_AND_ADD`），A 和 B 都会收到 [`onFriendListAdded`](../../../api/callbacks/onfriendlistaddedcallback.md) 回调，说明互相加好友成功。
    - B 调用 [`refuseFriendApplication`](../../../api/v2timfriendshipmanager/refusefriendapplication.md)拒绝好友请求，双方都会收到 [`onFriendApplicationListDeleted`](../../../api/callbacks/onfriendapplicationlistdeletedcallback.md) 回调。


### 删除好友
您可以调用 [`deleteFromFriendList`](../../../api/v2timfriendshipmanager/deletefromfriendlist.md)接口删除好友关系。

示例代码如下：

```dart
    //从好友列表删除好友
    V2TimValueCallback<List<V2TimFriendOperationResult>>
        deleteFromFriendListRes = await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .deleteFromFriendList(
      userIDList: [],//需要删除的用户id列表
      deleteType: FriendTypeEnum.V2TIM_FRIEND_TYPE_BOTH,//删除操作的类型
    );
    if (deleteFromFriendListRes.code == 0) {
      // 删除请求发送成功
      deleteFromFriendListRes.data?.forEach((element) {
        element.resultCode;//此条删除操作的错误码
        element.resultInfo;//此条删除操作的结果描述
        element.userID;//此条删除操作的用户id
      });
    }
```



### 检查好友关系
您可以调用 [`checkFriend`](../../../api/v2timfriendshipmanager/checkfriend.md)接口检查好友关系。

示例代码如下：

```dart
    //检查指定用户的好友关系
    V2TimValueCallback<List<V2TimFriendCheckResult>> checkFriendRes =
        await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .checkFriend(
      userIDList: [],//需要检查的用户id列表
      checkType: FriendTypeEnum.V2TIM_FRIEND_TYPE_BOTH,//检查的类型
    );
    if (checkFriendRes.code == 0) {
      // 查询发送成功
      checkFriendRes.data?.forEach((element) {
        element.resultCode;//检查结果错误码
        element.resultInfo;//检查结果信息
        element.resultType;//与查询用户的关系类型 0:不是好友 1:对方在我的好友列表中 2:我在对方的好友列表中 3:互为好友
        element.userID;//用户id
      });
    }
```


### 设置只能给好友发消息
IM SDK 在发送单聊消息的时候，默认不检查好友关系。在客服场景中，如果用户需要先加客服为好友才能进行沟通非常不方便，因此该默认设置常用于在线客服等场景。
如需实现类似“微信”或者“QQ”中“先加好友，再发消息”的交互体验，您可以在 [即时通信 IM 控制台](https://console.cloud.tencent.com/im) >【功能配置】>【登录与消息】>【好友关系检查】中开启"发送单聊消息检查关系链"。开启后，用户只能给好友发送消息，当用户给非好友发消息时，SDK 会报 20009 错误码。
![](https://main.qcloudimg.com/raw/395c4f35c09d029141fea043ee0f3a8f.png)

## 交流与反馈

欢迎加入 QQ 群进行技术交流和反馈问题，QQ 群：**788910197**。

<img style="width: 200px; max-width: inherit; zoom: 50%;" src="https://qcloudimg.tencent-cloud.cn/raw/f351a1640d265047db85ffab1cd086a7.png" />


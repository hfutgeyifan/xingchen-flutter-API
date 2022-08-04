## 功能描述
如果您需屏蔽某人的消息，可以把该用户拉入黑名单。

## 黑名单
### 拉黑某人
您可以调用 [`addToBlackList`](../../../api/v2timfriendshipmanager/addtoblacklist.md)接口把该用户加入黑名单，即拉黑该用户。

被拉黑的用户默认不会感知到 “被拉黑” 的状态，消息发送后不会返回已被对方拉黑的错误码。
如果希望被拉黑的用户在发消息时返回已被对方拉黑的错误提醒，请在 [即时通信 IM 控制台](https://console.cloud.tencent.com/im) >【功能配置】>【登录与消息】>【黑名单检查】中关闭 ”发送消息后展示发送成功“。关闭后，被拉黑的用户在发送消息时，SDK 会报 20007 错误码。

```dart
    //添加好友到黑名单
    V2TimValueCallback<List<V2TimFriendOperationResult>>
        addToBlackListRes = await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .addToBlackList(
              userIDList: [] //需要加入黑名单的好友id列表
              );
    if (addToBlackListRes.code == 0) {
      // 添加成功
      addToBlackListRes.data?.forEach((element) {
        element.resultCode;//此条记录的错误码
        element.resultInfo;//此条记录的操作结果描述
        element.userID;//被操作的用户id
      });
    }
```


### 解除拉黑
从黑名单中移除对方后可再次接收对方的消息，可调用 [`deleteFromBlackList`](../../../api/v2timfriendshipmanager/deletefromblacklist.md)。

```dart
    //把用户从黑名单中删除
    V2TimValueCallback<List<V2TimFriendOperationResult>>
        deleteFromBlackListRes = await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .deleteFromBlackList(
              userIDList: [] //需要移出黑名单的好友id列表
              );
    if (deleteFromBlackListRes.code == 0) {
      // 删除成功
      deleteFromBlackListRes.data?.forEach((element) {
        element.resultCode;//此条记录的错误码
        element.resultInfo;//此条记录的操作结果描述
        element.userID;//被操作的用户id
      });
    }
```


### 获取黑名单列表
您可以通过 [`getBlackList`](../../../api/v2timfriendshipmanager/getblacklist.md)查看已拉黑多少用户，并对黑名单人员进行管理。

```dart
    //获取黑名单列表
    V2TimValueCallback<List<V2TimFriendInfo>> getBlackListRes =
        await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .getBlackList();
    if (getBlackListRes.code == 0) {
      // 查询成功
      getBlackListRes.data?.forEach((element) {
        element.friendCustomInfo;//用户自定义属性
        element.friendGroups;//用户的好友分组
        element.friendRemark;//用户备注
        element.userID;//此条记录用户id
        element.userProfile?.allowType; //用户的好友验证方式 0:允许所有人加我好友 1:不允许所有人加我好友 2:加我好友需我确认
        element.userProfile?.birthday; //用户生日
        element.userProfile?.customInfo; //用户的自定义状态
        element.userProfile?.faceUrl; //用户头像 url
        element.userProfile?.gender; //用户的性别 1:男 2:女
        element.userProfile?.level; //用户的等级
        element.userProfile?.nickName; //用户昵称
        element.userProfile?.role; //用户的角色
        element.userProfile?.selfSignature; //用户的签名
        element.userProfile?.userID; //用户 ID
      });
    }
```


## 交流与反馈

欢迎加入 QQ 群进行技术交流和反馈问题，QQ 群：**788910197**。

<img style="width: 200px; max-width: inherit; zoom: 50%;" src="https://qcloudimg.tencent-cloud.cn/raw/f351a1640d265047db85ffab1cd086a7.png" />


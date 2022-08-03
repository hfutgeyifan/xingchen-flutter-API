## 功能描述
在某些场景下，您可能需要对好友进行分组，例如分为 "大学同学"、"公司同事" 等，您可以调用以下接口实现。

## 好友分组

### 新建好友分组
您可以调用 [`createFriendGroup`](../../../api/v2timfriendshipmanager/createfriendgroup.md)接口新建好友分组。

示例代码如下：

```dart
    // 新建好友分组
    V2TimValueCallback<List<V2TimFriendOperationResult>> createFriendGroupRes =
        await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .createFriendGroup(
      userIDList: [],//要添加到分组中的好友 userID 列表
      groupName: "",//新建的分组名称
    );
    if (createFriendGroupRes.code == 0) {
      // 新建请求发送成功
      createFriendGroupRes.data?.forEach((element) {
        element.resultCode;//此条操作的错误码
        element.resultInfo;//此条操作的结果描述
        element.userID;//此条被操作的用户id
      });
    }
```

### 删除好友分组
您可以调用 [`deleteFriendGroup`](../../../api/v2timfriendshipmanager/deletefriendgroup.md)接口删除好友分组。

示例代码如下：

```dart
    // 删除好友分组
    V2TimCallback deleteFriendGroupRes = await TencentImSDKPlugin.v2TIMManager
        .getFriendshipManager()
        .deleteFriendGroup(groupNameList: []);//需要删除的群组名称
    if (deleteFriendGroupRes.code == 0) {
      // 删除成功
    }
```


### 重命名好友分组
您可以调用 [`renameFriendGroup`](../../../api/v2timfriendshipmanager/renamefriendgroup.md)接口重命名好友分组。

示例代码如下：

```dart
    //修改好友分组的名称
    V2TimCallback renameFriendGroupRes = await TencentImSDKPlugin.v2TIMManager
        .getFriendshipManager()
        .renameFriendGroup(
          oldName: "", //旧的分组名称
          newName: "", //新的分组名称
          );
    if (renameFriendGroupRes.code == 0) {
      // 修改成功
    }
```


### 获取好友分组
您可以调用 [`getfriendgroups`](../../../api/v2timfriendshipmanager/getfriendgroups.md)接口获取好友分组列表。

示例代码如下：

```dart
    // 获取分组信息
    V2TimValueCallback<List<V2TimFriendGroup>> getFriendGroupsRes =
        await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .getFriendGroups(groupNameList: []);//要获取信息的好友分组名称列表
    if (getFriendGroupsRes.code == 0) {
      // 查询成功
      getFriendGroupsRes.data?.forEach((element) {
        element.friendCount;//此组的好友数
        element.friendIDList;//此组的好友id列表
        element.name;//此组的名称
      });
    }
```


### 添加好友到一个分组
您可以调用 [`addFriendsToFriendGroup`](../../../api/v2timfriendshipmanager/addfriendstofriendgroup.md)接口添加好友到一个分组。

示例代码如下：

```dart
    //添加好友到一个好友分组
    V2TimValueCallback<List<V2TimFriendOperationResult>>
        addFriendsToFriendGroupRes = await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .addFriendsToFriendGroup(
              groupName: "", //分组名称
              userIDList: [] //需要加入分组的好友id
              );
    if (addFriendsToFriendGroupRes.code == 0) {
      // 添加成功
      addFriendsToFriendGroupRes.data?.forEach((element) {
        element.resultCode;//此条记录的错误码
        element.resultInfo;//此条记录的操作结果描述
        element.userID;//此条记录被操作的用户id
      });
    }
```


### 从分组中删除某好友
您可以调用 [`deleteFriendsFromFriendGroup`](../../../api/v2timfriendshipmanager/deletefriendsfromfriendgroup.md)从分组中删除某好友。

示例代码如下：

```dart
    // 从好友分组中删除好友（只是将好友移出此列表，不删除好友关系）
    V2TimValueCallback<List<V2TimFriendOperationResult>>
        deleteFriendsFromFriendGroupRes = await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .deleteFriendsFromFriendGroup(groupName: "", //需要删除的群组名称
                userIDList: [] //需要删除的用户id列表
                );
    if (deleteFriendsFromFriendGroupRes.code == 0) {
      // 添加成功
      deleteFriendsFromFriendGroupRes.data?.forEach((element) {
        element.resultCode; //此条记录的错误码
        element.resultInfo; //此条记录操作结果说明
        element.userID; //此条记录被操作的用户id
      });
    }
```


## 交流与反馈

欢迎加入 QQ 群进行技术交流和反馈问题，QQ 群：**788910197**。

<img style="width: 200px; max-width: inherit; zoom: 50%;" src="https://qcloudimg.tencent-cloud.cn/raw/f351a1640d265047db85ffab1cd086a7.png" />


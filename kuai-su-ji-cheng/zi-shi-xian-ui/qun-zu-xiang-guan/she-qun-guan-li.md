## 功能描述
社群是一个由于共同主题而让大家聚集在一起的超大群组，可以在社群下根据不同兴趣创建多个话题。
社群用来管理群成员。社群下的所有话题不仅可以共享社群成员，还可以独立收发消息而不相互干扰。

- 社群和话题的管理接口在核心类 [`TencentImSDKPlugin.v2TIMManager.getGroupManager()`](../../../api/v2timmanager/getgroupmanager.md) 中。
- 话题中的消息相关接口在核心类 [` TencentImSDKPlugin.v2TIMManager.getMessageManager()`](../../../api/v2timmanager/getmessagemanager.md)  中。

{% hint style="info" %}
说明：

Flutter sdk 4.0.0以上版本支持，需 [购买旗舰版套餐包](https://buy.cloud.tencent.com/avc?from=17182) 并在 [**控制台**](https://console.cloud.tencent.com/im/qun-setting)>**群功能配置**>**社群** 打开开关后方可使用。
{% endhint %}

## 社群管理
### 创建社群

创建支持话题的社群分两步：

1. 创建 [`V2TIMGroupInfo`](../../../api/guan-jian-lei/group/v2timgroupinfo.md) 对象，其中 `groupType` 设置为 `Community`，`isSupportTopic` 设置为 `true`/`YES`。
2. 调用 [`createGroup`](../../../api/v2timgroupmanager/creategroup.md)  接口创建群组。

示例代码如下：


```dart
// 创建只会社群的话题
groupManager.createGroup(groupType: "Community", groupName: "社群",isSupportTopic: true);
```


### 获取加入的社群列表
调用 [`getJoinedCommunityList`](../../../api/v2timgroupmanager/getjoinedcommunitylist.md) 获取已经加入的支持话题的社群列表。

示例代码如下：


```dart
// 获取加入的社群列表
V2TimValueCallback<List<V2TimGroupInfo>> groupList = await groupManager.getJoinedCommunityList();
```


### 其他管理接口
其他功能跟普通群组使用方法一样，涉及的接口有：

| 功能                                     | 相关API介绍   |
| --------------------------------------- | ------------ |
| 加入社群                                 | [joinGroup](../../../api/v2timmanager/joingroup.md)       |
| 退出社群                                 | [quitGroup](../../../api/v2timmanager/quitgroup.md)              |
| 解散社群                                 | [dismissGroup](../../../api/v2timmanager/dismissgroup.md)       |
| 获取社群资料                                 | [getGroupsInfo](../../../api/v2timgroupmanager/getgroupsinfo.md)              |
| 修改社群资料                                 | [setGroupInfo](../../../api/v2timgroupmanager/setgroupinfo.md)       |
| 获取社群成员列表                                 | [getGroupMemberList](../../../api/v2timgroupmanager/getgroupmemberlist.md)              |
| 获取社群成员资料                                 | [getGroupMembersInfo](../../../api/v2timgroupmanager/getgroupmembersinfo.md)       |
| 修改社群成员资料                                 |  [setGroupMemberInfo](../../../api/v2timgroupmanager/setgroupmemberinfo.md)             |
| 踢出社群成员                                 |  [kickGroupMember](../../../api/v2timgroupmanager/kickgroupmember.md)             |




## 话题管理

### 创建话题

创建话题分两步：
1. 创建 [`V2TIMTopicInfo`](../../../api/guan-jian-lei/topic/v2timtopicinfo.md) 对象。
2. 调用 [`createTopicInCommunity`](../../../api/v2timgroupmanager/createtopicincommunity.md) 接口创建话题。

示例代码如下：


```java
// 创建话题
groupManager.createTopicInCommunity(groupID: "groupID", topicInfo: V2TimTopicInfo.fromJson({
    "topicName":"topic"
}));
```


### 删除话题
调用 [`deleteTopicFromCommunity`](../../../api/v2timgroupmanager/deletetopicfromcommunity.md) 接口删除话题。

示例代码如下：


```dart
// 删除话题
groupManager.deleteTopicFromCommunity(groupID: "",topicIDList:["topicID"]);
```


### 修改话题信息
修改话题信息分两步：

1. 创建 [`V2TIMTopicInfo`](../../../api/guan-jian-lei/topic/v2timtopicinfo.md)对象，并设置需要修改的字段
2. 调用  [`setTopicInfo`](../../../api/v2timgroupmanager/settopicinfo.md)  接口修改话题信息

示例代码如下：


```dart
// 修改话题信息
groupManager.setTopicInfo(topicInfo:V2TimTopicInfo.fromJson({
    "topicName":"topicName"
}));
```


### 获取话题列表
调用 [`getTopicInfoList`](../../../api/v2timgroupmanager/gettopicinfolist.md)  接口获取话题列表。
- 当 topicIDList 列表为空时，为获取该社群下的所有话题列表
- 当 topicIDList 填入指定的话题 ID 时，为获取填入的话题列表

示例代码如下：


```dart
// 获取话题列表
groupManager.getTopicInfoList(groupID: "",topicIDList: ['topicID']);
```


### 监听话题回调
在 [`V2TIMGroupListener`](../../../api/guan-jian-lei/listener/v2timgrouplistener.md) 中增加了话题相关的回调方法，`onTopicCreated`，`onTopicDeleted`，`onTopicInfoChanged`，用来监听话题事件。 

示例代码如下：


```dart
V2TIMGroupListener v2TIMGroupListener = new V2TIMGroupListener() {
 onTopicCreated(String groupID, String topicID) {
  	// 监听话题创建通知
  }

  onTopicDeleted(String groupID, List<String> topicIDList) {
  	// 监听话题删除通知
  }
	onTopicInfoChanged(String groupID, V2TIMTopicInfo topicInfo) {
  	// 监听话题信息更新通知
  }
};
V2TIMManager.getInstance().addGroupListener(v2TIMGroupListener);
```



## 话题消息
话题消息相关功能跟普通消息使用方法一样，涉及的接口有：

| 功能                                     | 接口   |  说明  ｜
| --------------------------------------- | ------------ |--------------｜
| 发送消息	    | [sendMessage](../../../api/v2timmessagemanager/sendmessage.md)   | 参数 groupID 填为话题 topicID ｜
| 接收消息	    | [V2TIMAdvancedMsgListener (dart) 中的 onRecvNewMessage 方法](../../../api/callbacks/onrecvnewmessagecallback.md)  |消息中的 groupID 即为话题 topicID｜
| 标记消息已读	 | [markGroupMessageAsRead](../../../api/v2timmessagemanager/markgroupmessageasread.md)   |参数 groupID 填为话题 topicID｜
| 获取历史消息	 | [getGroupHistoryMessageList](../../../api/v2timmessagemanager/getgrouphistorymessagelist.md)    |参数 groupID 填为话题 topicID｜
| 撤回消息	    | [revokeMessage](../../../api/v2timmessagemanager/revokemessage.md) |参数 groupID 填为话题 topicID｜

## 交流与反馈

欢迎加入 QQ 群进行技术交流和反馈问题，QQ 群：**788910197**。

<img style="width: 200px; max-width: inherit; zoom: 50%;" src="https://qcloudimg.tencent-cloud.cn/raw/f351a1640d265047db85ffab1cd086a7.png" />


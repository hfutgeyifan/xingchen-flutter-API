## 功能描述
通过设置**单聊和群聊**的消息接收选项，可以实现类似“微信”或者“QQ”中消息免打扰的功能。
IM SDK 支持三种类型的消息接收选项，消息接收选项在 [`V2TIMReceiveMessageOpt`](../../../api/enums/receivemsgoptenum.md) 中定义：

| 消息接收选项 | 功能描述 |
|---------|---------|
| ReceiveMsgOptEnum.V2TIM_RECEIVE_MESSAGE | 在线时正常接收消息，离线时接收离线推送通知 |
| ReceiveMsgOptEnum.V2TIM_NOT_RECEIVE_MESSAGE | 在线和离线都不接收消息 |
| ReceiveMsgOptEnum.V2TIM_RECEIVE_NOT_NOTIFY_MESSAGE | 在线时正常接收消息，离线时不接收离线推送通知 |

使用不同的 [`V2TIMReceiveMessageOpt`](../../../api/enums/receivemsgoptenum.md) 可以实现群消息免打扰：
**完全不接收消息**
消息接收选项设置为 `V2TIM_NOT_RECEIVE_MESSAGE` 后，单聊/群聊的任何消息都收不到，会话列表也不会更新。

**接收消息但不提醒，在会话列表界面显示小圆点（不显示未读数）**
1. 消息接收选项设置为 `V2TIM_RECEIVE_NOT_NOTIFY_MESSAGE`。
2. 当单聊/群聊收到新消息，会话列表需要更新时，可以通过会话 [`V2TIMConversation`](../../../api/guan-jian-lei/message/v2timconversation.md) 中的 `unreadCount` 获取到消息未读数。
3. 根据 [`V2TIMConversation`](../../../api/guan-jian-lei/message/v2timconversation.md) 的 `recvOpt`  判断获取到的消息接收选项为 `V2TIM_RECEIVE_NOT_NOTIFY_MESSAGE` 时显示小红点而非消息未读数。

{% hint style="info" %}
说明：

此方式需使用未读计数功能，因此仅适用于好友工作群（Work）和陌生人社交群（Public）。群组类型详见 群组介绍。
{% endhint %}


## 设置单聊的消息接收选项
通过调用 [`setC2CReceiveMessageOpt`](../../../api/v2timmessagemanager/setc2creceivemessageopt.md) 接口，设置单聊的消息接收选项。
您可以通过参数 userIDList 设置一批用户，但一次最大允许设置 30 个用户。

{% hint style="info" %}
警告：

该接口调用频率被限制为 1 秒内最多调用 5 次。
{% endhint %}

示例代码如下：


```dart
// 设置在线和离线都不接收消息

TencentImSDKPlugin.v2TIMManager.getMessageManager().setC2CReceiveMessageOpt(userIDList: ['user1','user2'], opt: ReceiveMsgOptEnum.V2TIM_NOT_RECEIVE_MESSAGE);
```


## 获取单聊的消息接收选项
通过调用 [`getC2CReceiveMessageOpt`](../../../api/v2timmessagemanager/getc2creceivemessageopt.md) 接口，获取单聊的消息接收选项。

示例代码如下：


```dart
V2TimValueCallback<List<V2TimReceiveMessageOptInfo>> messageOpt = await TencentImSDKPlugin.v2TIMManager.getMessageManager().getC2CReceiveMessageOpt(userIDList: ['user1','user2']);
  messageOpt.data.forEach((element) {
    // 接收消息选项
    element.c2CReceiveMessageOpt;
    element.userID;
  });
```



## 设置群聊的消息接收选项
通过调用 [`setGroupReceiveMessageOpt`](../../../api/v2timmessagemanager/setgroupreceivemessageopt.md) 接口，设置群聊的消息接收选项。

示例代码如下：


```dart
TencentImSDKPlugin.v2TIMManager.getMessageManager().setGroupReceiveMessageOpt(groupID: "groupID", opt: ReceiveMsgOptEnum.V2TIM_NOT_RECEIVE_MESSAGE);
```


## 获取群聊的消息接收选项
通过调用 [`getGroupsInfo`](../../../api/v2timgroupmanager/getgroupsinfo.md) 接口，获得群资料 [`V2TIMGroupInfo`](../../../api/guan-jian-lei/group/v2timgroupinfo.md) 对象列表，对象的 recvOpt 字段表示群组的消息接收选项。

示例代码如下：


```dart
V2TimValueCallback<List<V2TimGroupInfoResult>> groups = await TencentImSDKPlugin.v2TIMManager.getGroupManager().getGroupsInfo(groupIDList: ['groupID']);
  groups.data.forEach((element) { 
    // 获取群组的接收消息选项
    element.groupInfo.recvOpt;
  });
```


## 交流与反馈

欢迎加入 QQ 群进行技术交流和反馈问题，QQ 群：**788910197**。

<img style="width: 200px; max-width: inherit; zoom: 50%;" src="https://qcloudimg.tencent-cloud.cn/raw/f351a1640d265047db85ffab1cd086a7.png" />


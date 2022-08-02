## 功能描述
清空消息分为两种：清空单聊消息、清空群聊消息。
清空消息会同时清空当前会话内所有的消息，包含**本地和云端**消息，但不会删除会话本身。

{% hint style="info" %}
说明：

如果不想清空云端消息，请**不要**使用本接口。
{% endhint %}

如果删除的是最后一条消息，会话的 `lastMessage` 会变为前一条消息。



### 清空单聊消息

您可以调用 [`clearC2CHistoryMessage`](../../../api/v2timmessagemanager/clearc2chistorymessage.md) 清空单聊消息。


示例代码如下：



```dart
TencentImSDKPlugin.v2TIMManager.getMessageManager().clearC2CHistoryMessage(userID: "userid");
```



### 清空群聊消息

您可以调用 [`clearGroupHistoryMessage`](../../../api/v2timmessagemanager/cleargrouphistorymessage.md) 清空群聊消息。

示例代码如下：


```dart
 TencentImSDKPlugin.v2TIMManager.getMessageManager().clearGroupHistoryMessage(groupID: "");
```


## 交流与反馈

欢迎加入 QQ 群进行技术交流和反馈问题，QQ 群：**788910197**。

<img style="width: 200px; max-width: inherit; zoom: 50%;" src="https://qcloudimg.tencent-cloud.cn/raw/f351a1640d265047db85ffab1cd086a7.png" />


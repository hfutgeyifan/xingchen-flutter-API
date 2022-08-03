## 功能描述
IM SDK 提供获取会话的接口，可以获取指定的单个、多个会话的 [`V2TimConversation`](../../../api/guan-jian-lei/message/v2timconversation.md) 对象信息。

### 获取指定的单个会话
您可以调用 [`getConversation`](../../../api/v2timconversationmanager/getconversation.md) 获取单个会话的信息，它是一个 [`V2TimConversation`](../../../api/guan-jian-lei/message/v2timconversation.md) 对象。

示例代码如下：


```dart
V2TimValueCallback<V2TimConversation> conv = await conversationManager.getConversation(conversationID: "conversationID");
```


### 获取指定的多个会话

[`getConversationList`](../../../api/v2timconversationmanager/getconversationlist.md) 获取指定的会话列表，列表中存储的是 [`V2TimConversation`](../../../api/guan-jian-lei/message/v2timconversation.md) 对象。

示例代码如下：


```dart
V2TimValueCallback<V2TimConversationResult> convList = await conversationManager.getConversationList(nextSeq: '', count: 10);
```


## 交流与反馈

欢迎加入 QQ 群进行技术交流和反馈问题，QQ 群：**788910197**。

<img style="width: 200px; max-width: inherit; zoom: 50%;" src="https://qcloudimg.tencent-cloud.cn/raw/f351a1640d265047db85ffab1cd086a7.png" />


## 功能描述
会话置顶，指的是把好友或者群会话固定在会话列表的最前面，方便用户查找。置顶状态会存储在服务器，切换终端设备后，置顶状态会同步到新设备上。



## 置顶会话
您可以调用 [`pinConversation`](../../../api/v2timconversationmanager/pinconversation.md) 接口，设置是否置顶会话。

会话的顺序，按[`V2TimConversation`](../../../api/guan-jian-lei/message/v2timconversation.md) 对象的 `orderKey` 字段排序。`orderKey` 字段是整型数，当发送新消息、接收新消息、设置草稿或置顶会话时，会话被激活，`orderKey` 字段会增大。

需要注意的是，被置顶会话始终排在非置顶会话的前面，如果同时置顶多个会话，这几个会话之间的相对顺序仍然会保持，例如，有 5 个依次排序的会话 1、2、3、4、5，同时置顶会话 2 和 3，置顶后的顺序是 2、3、1、4、5，显然，会话 2 和 3 排在最前面，并且会话 2 仍然排在 3 的前面。

调用 [`getConversationList`](../../../api/v2timconversationmanager/getconversationlist.md) 获取会话列表时，该接口会先返回置顶的会话，再返回未置顶的会话。您可以通过 [`V2TimConversation`](../../../api/guan-jian-lei/message/v2timconversation.md) 对象的 `isPinned` 字段，检查会话有没有置顶。

示例代码如下：


```dart
// isPinned 参数为 true，表示置顶会话，否则，表示取消置顶。
bool isPinned = true;
conversationManager.pinConversation(conversationID: "conversationID", isPinned: isPinned);
```


## 会话置顶变更通知
如果您事先调用了 [`addConversationListener`](../../../api/v2timconversationmanager/addconversationlistener.md) 添加会话监听器，就可以在 [`onConversationChanged`](../../../api/callbacks/onconversationchangedcallback.md) 中获取到 [`V2TimConversation`](../../../api/guan-jian-lei/message/v2timconversation.md) 对象的 `isPinned` 字段值。根据这个字段可以判断会话的置顶状态是否变化。
示例代码如下：

```java
conversationManager.addConversationListener(listener: V2TimConversationListener(onConversationChanged: (conversationList) {
    // 变更后的最新会话
  },));
```


## 交流与反馈

欢迎加入 QQ 群进行技术交流和反馈问题，QQ 群：**788910197**。

<img style="width: 200px; max-width: inherit; zoom: 50%;" src="https://qcloudimg.tencent-cloud.cn/raw/f351a1640d265047db85ffab1cd086a7.png" />


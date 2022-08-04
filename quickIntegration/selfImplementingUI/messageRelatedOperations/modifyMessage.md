## 功能描述
会话里面已经发送成功的消息，会话内任意成员可以针对消息做二次修改。消息修改成功后会同步给会话的全部成员。

{% hint style="info" %}
说明：

仅Flutter sdk 4.0.0 及以上版本支持。
{% endhint %}

## 变更消息
会话参与者可以调用 [`modifyMessage`](../../../api/v2timmessagemanager/modifymessage.md) 接口对会话里的消息做二次修改。
修改消息时，IM SDK 仅限制了会话参与者才能修改，如果您需要更多限制，例如限制只有消息发送者才能修改，可以自行在业务层处理。

目前消息支持修改的信息如下：
1、[`localCustomData`](../../../api/keyClass/message/v2timmessage.md) 
2、[`localCustomInt`](../../../api/keyClass/message/v2timmessage.md) 
3、[`cloudCustomData`](../../../api/keyClass/message/v2timmessage.md) 
4、[`V2TIMTextElem`](../../../api/keyClass/message/v2timtextelem.md) 
5、[`V2TIMCustomElem`](../../../api/keyClass/message/v2timcustomelem.md)

示例代码如下：


```dart
// 查找到需要修改的消息
V2TimValueCallback<List<V2TimMessage>> msgListRes = await TencentImSDKPlugin.v2TIMManager.getMessageManager().findMessages(messageIDList: ['msgid']);
// 编辑消息
  if(msgListRes.code == 0){
    List<V2TimMessage> messageList = msgListRes.data;
    if(messageList.isNotEmpty){
      V2TimMessage originMessage = messageList[0];
      originMessage.cloudCustomData = "change data";
     V2TimValueCallback<V2TimMessageChangeInfo> modify = await TencentImSDKPlugin.v2TIMManager.getMessageManager().modifyMessage(message: originMessage);
     if(modify.code == 0){
       if(modify.data.code ==0){
         // 修改成功
       }
     }
    }
  }
```


## 监听消息变更回调
会话的参与者调用 [`addAdvancedMsgListener`](../../../api/v2timmessagemanager/addadvancedmsglistener.md) 添加高级消息监听器。

当会话里的消息被修改后，会话的参与者都会收到 [`onRecvMessageModified`](../../../api/callbacks/onrecvmessagemodified.md) 回调，回调里面会携带修改之后的消息对象。

示例代码如下：


```java
onRecvMessageModified: (V2TimMessage message) {
      // msg 为被修改之后的消息对象
},
```


## 交流与反馈

欢迎加入 QQ 群进行技术交流和反馈问题，QQ 群：**788910197**。

<img style="width: 200px; max-width: inherit; zoom: 50%;" src="https://qcloudimg.tencent-cloud.cn/raw/f351a1640d265047db85ffab1cd086a7.png" />


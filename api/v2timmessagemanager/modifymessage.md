---
description: 消息变更 4.0.1及以后版本支持
---

# modifyMessage

## API功能介绍

消息变更 4.0.1及以后版本支持

* 会话里面已经发送成功的消息，会话内任意成员可以针对消息做二次修改。消息修改成功后会同步给会话的全部成员。
* 修改消息时，IM SDK 仅限制了会话参与者才能修改，如果您需要更多限制，比如限制只有消息发送者才能修改，可以自行在业务层处理。

{% hint style="info" %}
目前消息支持修改的信息如下：\
1、`localCustomData` \
2、`localCustomInt` \
3、`cloudCustomData` \
4、`V2TIMTextElem` \
5、`V2TIMCustomElem`&#x20;
{% endhint %}

## 参数详解

| 参数名称    | 参数类型                                        | 是否必填 | 描述      |
| ------- | ------------------------------------------- | ---- | ------- |
| message | [V2TimMessage](../../class/v2timmessage.md) | 是    | 需要修改的消息 |

## 返回模板

```dart
V2TimValueCallback<V2TimMessageChangeInfo>

{
    code : int
    desc : String
    data : {
      code : int
      desc : String
      message : V2TimMessage
    }
}
```

## 返回参数详解

| 名称   | 数值类型                                                            | 描述                                                             |
| ---- | --------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                             | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                          | 请求结果描述                                                         |
| data | [V2TimMessageChangeInfo](../../class/v2timmessagechangeinfo.md) | 修改后的信息                                                         |

## 使用案例  &#x20;

```dart
// 通过消息id查找到需要修改的消息
V2TimValueCallback<List<V2TimMessage>> msgListRes = await TencentImSDKPlugin
    .v2TIMManager
    .getMessageManager()
    .findMessages(messageIDList: ['msgid']);// 查找需要修改消息的id
// 编辑消息
  if(msgListRes.code == 0){
    List<V2TimMessage> messageList = msgListRes.data;
    if(messageList.isNotEmpty){
      V2TimMessage originMessage = messageList[0];
      originMessage.cloudCustomData = "change data";// 修改消息的信息
     V2TimValueCallback<V2TimMessageChangeInfo> modify = await TencentImSDKPlugin
         .v2TIMManager
         .getMessageManager()
         .modifyMessage(message: originMessage);
     if(modify.code == 0){
       if(modify.data.code ==0){
         // 修改成功
       }
     }
    }
  }
```

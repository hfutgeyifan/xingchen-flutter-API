---
description: 创建文本消息，并且可以附带 @ 提醒功能
---

# createTextAtMessage

## API功能介绍

创建文本消息，并且可以附带 @ 提醒功能

## 参数详解

| 参数名称       | 参数类型           | 是否必填 | 描述      |
| ---------- | -------------- | ---- | ------- |
| text       | String         | 是    | 消息文本    |
| atUserList | List< String > | 是    | @用户ID列表 |

## 返回模板

```dart
V2TimValueCallback<V2TimMsgCreateInfoResult>

{
    code : int
    desc : String
    data : {
      id : String
      messageInfo : V2TimMessage
    }
}
```

## 返回参数详解

| 名称   | 数值类型                                                                       | 描述                                                             |
| ---- | -------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                        | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                     | 请求结果描述                                                         |
| data | [V2TimMsgCreateInfoResult](../guan-jian-lei/message/v2timsdklistener-1.md) | 创建后的@Text信息                                                    |

## 使用案例  &#x20;

```dart
// 创建文本消息
V2TimValueCallback<V2TimMsgCreateInfoResult> createTextAtMessageRes = await TencentImSDKPlugin.v2TIMManager.getMessageManager().createTextAtMessage(
    text: "test",// 文本信息
    atUserList: [],// @用户ID列表
  );
 if(createTextAtMessageRes.code == 0){
       // 文本信息创建成功
    String id =  createTextAtMessageRes.data.id;
       // 发送@文本消息
       // 在sendMessage时，必须填写groupID，receiver可为空
       //                 若填写了receiver与groupID则发群内的个人用户，消息在群聊中显示，只有指定receiver能看见
    V2TimValueCallback<V2TimMessage> sendMessageRes = await TencentImSDKPlugin.v2TIMManager.getMessageManager().sendMessage(id: id, receiver: "userID", groupID: "groupID");
    if(sendMessageRes.code == 0){
      // 发送成功
    }
  }
  
// 在加载和更新会话处，需要调用 V2TimConversation 的 groupAtInfolist 接口获取会话的 @ 数据列表。
// 通过列表中 V2TimGroupAtInfo 对象的 atType接口获取 @ 数据类型，并更新到当前会话的 @ 信息。
     V2TimValueCallback<V2TimConversationResult> getConversationList =
        await TencentImSDKPlugin.v2TIMManager
            .getConversationManager()
            .getConversationList(nextSeq: "", count: 10);
    if (getConversationList.code == 0) {
      getConversationList.data.conversationList.forEach((element) {
        element.groupAtInfoList.forEach((element) {
          if (element.atType == 0) {
            // @我
          }
          if (element.atType == 1) {
            // @all
          }
          if (element.atType == 2) {
            // @all&@我
          }
        });
      });
    }
```

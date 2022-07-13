---
description: 创建文本消息，并且可以附带 @ 提醒功能
---

# createTextAtMessage

## API功能介绍

创建文本消息，并且可以附带 @ 提醒功能

## 参数详解

| 参数名称       | 参数类型          | 是否必填 | 描述      |
| ---------- | ------------- | ---- | ------- |
| text       | String        | 是    | 消息文本    |
| atUserList | List\<String> | 是    | @用户ID列表 |

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

| 名称   | 数值类型                                                          | 描述                                                             |
| ---- | ------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                           | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                        | 请求结果描述                                                         |
| data | [V2TimMsgCreateInfoResult](../../class/v2timsdklistener-1.md) | 创建后的Text信息                                                     |

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
       // 发送文本消息
       // 在sendMessage时，必须填写groupID
       //                 若填写了receiver与groupID则发群内的个人用户，消息在群聊中显示，只有指定receiver能看见
    V2TimValueCallback<V2TimMessage> sendMessageRes = await TencentImSDKPlugin.v2TIMManager.getMessageManager().sendMessage(id: id, receiver: "userID", groupID: "groupID");
    if(sendMessageRes.code == 0){
      // 发送成功
    }
  }
```

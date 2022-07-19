---
description: 创建定制化消息
---

# createCustomMessage

## 功能介绍

创建定制化消息

## 参数详解

| 参数名称      | 参数类型   | 是否必填 | 描述           |
| --------- | ------ | ---- | ------------ |
| data      | String | 是    | 自定义data      |
| desc      | String | 否    | 自定义desc      |
| extension | String | 否    | 自定义extension |

## 返回值

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

## 返回值详解

| 名称   | 数值类型                                                                       | 描述                                                             |
| ---- | -------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                        | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                     | 请求结果描述                                                         |
| data | [V2TimMsgCreateInfoResult](../guan-jian-lei/message/v2timsdklistener-1.md) | 创建后的自定义消息信息                                                    |

## 代码示例  &#x20;

```dart
// 创建自定义消息
V2TimValueCallback<V2TimMsgCreateInfoResult> createCustomMessageRes = await TencentImSDKPlugin.v2TIMManager.getMessageManager().createCustomMessage(
    data: '自定义data',
    desc: '自定义desc',
    extension: '自定义extension',
  );
  if(createCustomMessageRes.code == 0){
    String id =  createCustomMessageRes.data.id;
    // 发送自定义消息
    // 在sendMessage时，若只填写receiver则发个人用户单聊消息
    //                 若只填写groupID则发群组消息
    //                 若填写了receiver与groupID则发群内的个人用户，消息在群聊中显示，只有指定receiver能看见
    V2TimValueCallback<V2TimMessage> sendMessageRes = await TencentImSDKPlugin.v2TIMManager.getMessageManager().sendMessage(id: id, receiver: "userID", groupID: "groupID");
    if(sendMessageRes.code == 0){
      // 发送成功
    }
  }
```

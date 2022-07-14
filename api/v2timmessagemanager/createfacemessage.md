---
description: 创建表情消息
---

# createFaceMessage

## API功能介绍

创建表情消息

* 定位消息会直接发送表情编码，通常接收端需要将其转换成对应的表情 icon。
* SDK 并不提供表情包，如果开发者有表情包，可使用 index 存储表情在表情包中的索引，或者使用 data 存储表情映射的字符串 key，这些都由用户自定义，SDK 内部只做透传。

## 参数详解

| 参数名称  | 参数类型   | 是否必填 | 描述    |
| ----- | ------ | ---- | ----- |
| index | int    | 是    | 表情索引  |
| data  | String | 是    | 自定义数据 |

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
| data | [V2TimMsgCreateInfoResult](../../class/v2timsdklistener-1.md) | 创建后的表情信息                                                       |

## 使用案例  &#x20;

```dart
// 创建表情消息
V2TimValueCallback<V2TimMsgCreateInfoResult> createFaceMessageRes =
      await TencentImSDKPlugin.v2TIMManager
          .getMessageManager()
          .createFaceMessage(
            index: 0,// 表情索引
            data: "自定义消息",
          );
  if (createFaceMessageRes.code == 0) {
    String id = createFaceMessageRes.data.id;
       // 发送表情消息
       // 在sendMessage时，若只填写receiver则发个人用户单聊消息
       //                 若只填写groupID则发群组消息
       //                 若填写了receiver与groupID则发群内的个人用户，消息在群聊中显示，只有指定receiver能看见
    V2TimValueCallback<V2TimMessage> sendMessageRes = await TencentImSDKPlugin
        .v2TIMManager
        .getMessageManager()
        .sendMessage(id: id, receiver: "userID", groupID: "groupID");
    if (sendMessageRes.code == 0) {
      // 发送成功
    }
  }
```

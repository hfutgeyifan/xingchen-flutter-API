---
description: 创建文本消息
---

# createTextMessage

## API功能介绍

创建文本消息

## 参数详解

| 参数名称 | 参数类型   | 是否必填 | 描述   |
| ---- | ------ | ---- | ---- |
| text | String | 是    | 消息文本 |

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

| 名称   | 数值类型                                         | 描述                                                             |
| ---- | -------------------------------------------- | -------------------------------------------------------------- |
| code | int                                          | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                       | 请求结果描述                                                         |
| data | [V2TimMsgCreateInfoResult](broken-reference) | 创建后的Text信息                                                     |

## 使用案例  &#x20;

```dart
    // 创建文本消息
    V2TimValueCallback<V2TimMsgCreateInfoResult> createTextMessageRes =
        await TencentImSDKPlugin.v2TIMManager
            .getMessageManager()
            .createTextMessage(
              text: "test", // 文本信息
            );
    if (createTextMessageRes.code == 0) {
      // 文本信息创建成功
      String? id = createTextMessageRes.data?.id;
      // 发送文本消息
      // 在sendMessage时，若只填写receiver则发个人用户单聊消息
      //                 若只填写groupID则发群组消息
      //                 若填写了receiver与groupID则发群内的个人用户，消息在群聊中显示，只有指定receiver能看见
      V2TimValueCallback<V2TimMessage> sendMessageRes = await TencentImSDKPlugin
          .v2TIMManager
          .getMessageManager()
          .sendMessage(id: id!, receiver: "userID", groupID: "groupID");
      if (sendMessageRes.code == 0) {
        // 发送成功
      }
    }
```

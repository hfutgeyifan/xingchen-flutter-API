---
description: 创建文本消息，并且可以附带 @ 提醒功能
---

# createTextAtMessage

## 功能介绍

创建文本消息，并且可以附带 @ 提醒功能(直播群不支持)

## 参数详解

| 参数名称       | 参数类型           | 是否必填 | 描述      |
| ---------- | -------------- | ---- | ------- |
| text       | String         | 是    | 消息文本    |
| atUserList | List< String > | 是    | @用户ID列表 |

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
| data | [V2TimMsgCreateInfoResult](../guan-jian-lei/message/v2timsdklistener-1.md) | 创建后的@Text信息                                                    |

## 代码示例  &#x20;

```dart
    // 创建文本消息
    V2TimValueCallback<V2TimMsgCreateInfoResult> createTextAtMessageRes =
        await TencentImSDKPlugin.v2TIMManager
            .getMessageManager()
            .createTextAtMessage(
      text: "test", // 文本信息
      atUserList: [], // @用户ID列表
    );
    if (createTextAtMessageRes.code == 0) {
      // 文本信息创建成功
      String? id = createTextAtMessageRes.data?.id;
      // 发送@文本消息
      // 在sendMessage时，必须填写groupID，receiver必须为空，否则无法发送消息
      V2TimValueCallback<V2TimMessage> sendMessageRes = await TencentImSDKPlugin
          .v2TIMManager
          .getMessageManager()
          .sendMessage(id: id!, receiver: "", groupID: "groupID");
      if (sendMessageRes.code == 0) {
        // 发送成功
      }
    }
```

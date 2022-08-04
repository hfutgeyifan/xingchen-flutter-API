---
description: 创建位置信息√
---

# createLocationMessage

## 功能介绍

创建位置信息

* 定位消息会直接发送经纬度，一般需要配合地图控件显示。

## 参数详解

| 参数名称      | 参数类型   | 是否必填 | 描述       |
| --------- | ------ | ---- | -------- |
| desc      | String | 是    | 地理位置描述信息 |
| longitude | double | 是    | 经度       |
| latitude  | double | 是    | 纬度       |

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
| data | [V2TimMsgCreateInfoResult](../keyClass/message/v2timsdklistener-1.md) | 创建后的位置信息                                                       |

## 代码示例  &#x20;

```dart
    // 创建位置消息
    V2TimValueCallback<V2TimMsgCreateInfoResult> createLocationMessage =
        await TencentImSDKPlugin.v2TIMManager
            .getMessageManager()
            .createLocationMessage(
              desc: "深圳市南山区深南大道", //位置信息摘要
              longitude: 34, // 经度
              latitude: 20, // 纬度
            );
    if (createLocationMessage.code == 0) {
      String? id = createLocationMessage.data?.id;
      // 发送位置消息
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

---
description: 查询某个用户的 C2C 消息接收选项√
---

# getC2CReceiveMessageOpt

## 功能介绍

查询某个用户的 C2C 消息接收选项

{% hint style="info" %}
注意：web不支持该接口
{% endhint %}

## 参数详解

| 参数名称       | 参数类型           | 是否必填 | 描述          |
| ---------- | -------------- | ---- | ----------- |
| userIDList | List< String > | 是    | 需要查询的用户id列表 |

## 返回值

```dart
V2TimValueCallback<List<V2TimReceiveMessageOptInfo>>

{
    code : int
    desc : String
    data : List<V2TimReceiveMessageOptInfo>
}
```

## 返回值详解

| 名称   | 数值类型                                                                                         | 描述                                                             |
| ---- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                                          | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                                       | 请求结果描述                                                         |
| data | List< [V2TimReceiveMessageOptInfo](../keyClass/message/v2timreceivemessageoptinfo.md) > | 查询到的消息接收选项列表                                                   |

## 代码示例  &#x20;

```dart
    // 查询某些用户的 C2C 消息接收选项
    V2TimValueCallback<List<V2TimReceiveMessageOptInfo>>
        getC2CReceiveMessageOptRes = await TencentImSDKPlugin.v2TIMManager
            .getMessageManager()
            .getC2CReceiveMessageOpt(userIDList: ['user1', 'user2']);
    if (getC2CReceiveMessageOptRes.code == 0) {
      //查询成功
      getC2CReceiveMessageOptRes.data?.forEach((element) {
        element.c2CReceiveMessageOpt; // 此用户的消息接收选项
        element.userID; // 此用户的id
      });
    }
```

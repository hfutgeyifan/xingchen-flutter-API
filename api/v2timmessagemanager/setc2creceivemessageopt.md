---
description: 设置用户消息接收选项
---

# setC2CReceiveMessageOpt

## API功能介绍

设置用户消息接收选项

* 您可以通过参数 userIDList 设置一批用户，但一次最大允许设置 30 个用户

{% hint style="info" %}
该接口调用频率被限制为 1 秒内最多调用 5 次。
{% endhint %}

## 参数详解

| 参数名称       | 参数类型                                               | 是否必填 | 描述          |
| ---------- | -------------------------------------------------- | ---- | ----------- |
| userIDList | List< String >                                     | 是    | 需要设置的用户id列表 |
| opt        | [ReceiveMsgOptEnum](../enums/receivemsgoptenum.md) | 是    | 用户消息接收选项属性  |

## 返回模板

```dart
V2TimCallback

{
    code : int
    desc : String
}
```

## 返回参数详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |

## 使用案例  &#x20;

```dart
// 设置在线和离线都不接收消息
    TencentImSDKPlugin.v2TIMManager.getMessageManager().setC2CReceiveMessageOpt(
        userIDList: ['user1', 'user2'],// 需要设置的用户id列表
        opt: ReceiveMsgOptEnum.V2TIM_NOT_RECEIVE_MESSAGE);// 用户消息接收选项属性
```

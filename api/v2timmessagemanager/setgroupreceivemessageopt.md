---
description: 设置群组消息接收选项
---

# setGroupReceiveMessageOpt

## API功能介绍

设置群组消息接收选项

## 参数详解

| 参数名称    | 参数类型                                               | 是否必填 | 描述         |
| ------- | -------------------------------------------------- | ---- | ---------- |
| groupID | String                                             | 是    | 需要设置的群组id  |
| opt     | [ReceiveMsgOptEnum](../enums/receivemsgoptenum.md) | 是    | 群组消息接收选项属性 |

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
    TencentImSDKPlugin.v2TIMManager.getMessageManager().setGroupReceiveMessageOpt(
        groupID: "groupID",// 需要设置的群组id
        opt: ReceiveMsgOptEnum.V2TIM_NOT_RECEIVE_MESSAGE);// 群组消息接收选项属性
```

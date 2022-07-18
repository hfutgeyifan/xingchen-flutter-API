---
description: 设置消息自定义数据
---

# setLocalCustomInt

## API功能介绍

设置消息自定义数据

* 本地保存，不会发送到对端，程序卸载重装后失效

{% hint style="info" %}
注意： web不支持该接口
{% endhint %}

## 参数详解

| 参数名称           | 参数类型   | 是否必填 | 描述         |
| -------------- | ------ | ---- | ---------- |
| msgID          | String | 是    | 需要设置的消息id  |
| localCustomInt | int    | 是    | 需要设置的自定义属性 |

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
// 设置消息自定义数据
// 设置之后此消息会多出一个localCustomInt属性，用户可以读取此属性来获取设置的自定义属性
    TencentImSDKPlugin.v2TIMManager.getMessageManager().setLocalCustomInt(
        msgID: "msgID",// 需要设置的消息id
        localCustomInt: "localCustomInt");// 需要设置的自定义属性
```
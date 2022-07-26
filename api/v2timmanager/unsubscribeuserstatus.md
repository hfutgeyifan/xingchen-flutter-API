---
description: 取消订阅用户状态√
---

# unsubscribeUserStatus

## 功能介绍

取消订阅用户状态

* 当 userIDList 为空或者 null 时，取消当前所有的订阅。
* 该功能为 IM 旗舰版功能，购买旗舰版套餐包后可使用，详见价格说明。

{% hint style="info" %}
注意：

4.0.8版本开始支持

web不支持
{% endhint %}

## 参数详解

| 参数名称       | 参数类型           | 是否必填 | 描述          |
| ---------- | -------------- | ---- | ----------- |
| userIDList | List< String > | 是    | 取消订阅的用户id列表 |

## 返回值

```dart
V2TimCallback

{
    code : int
    desc : String
}
```

## 返回值详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |

## 代码示例

```dart
    //取消订阅用户状态
    V2TimCallback unsubscribeUserStatusRes = await TencentImSDKPlugin.v2TIMManager
        .unsubscribeUserStatus(userIDList: []);// 取消订阅的用户id列表
    if (unsubscribeUserStatusRes.code == 0) {
      // 取消订阅成功
    }
```

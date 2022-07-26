---
description: 订阅用户状态√
---

# subscribeUserStatus

## 功能介绍

订阅用户状态

* 当成功订阅用户状态后，当对方的状态（包含在线状态、自定义状态）发生变更后，您可以监听 [onUserStatusChanged](../callbacks/onuserstatuschanged.md) 回调来感知
* 如果您需要订阅好友列表的状态，您只需要在控制台上打开开关即可，无需调用该接口
* 该接口不支持订阅自己，您可以通过监听 [onUserStatusChanged](../callbacks/onuserstatuschanged.md) 回调来感知自身的自定义状态的变更
* 订阅列表有个数限制，超过限制后，会自动淘汰最先订阅的用户
* 该功能为 IM 旗舰版功能，购买旗舰版套餐包后可使用，详见价格说明。

{% hint style="info" %}
注意：

4.0.8版本开始支持

web不支持
{% endhint %}

## 参数详解

| 参数名称       | 参数类型           | 是否必填 | 描述        |
| ---------- | -------------- | ---- | --------- |
| userIDList | List< String > | 是    | 订阅的用户id列表 |

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
    //订阅用户状态
    V2TimCallback subscribeUserStatusRes = await TencentImSDKPlugin.v2TIMManager
        .subscribeUserStatus(userIDList: []);// 订阅的用户id列表
    if (subscribeUserStatusRes.code == 0) {
      // 订阅成功
    }
```

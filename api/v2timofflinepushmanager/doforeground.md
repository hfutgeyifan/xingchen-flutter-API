---
description: APP 检测到应用进前台时可以调用此接口
---

# doForeground

## API功能介绍

APP 检测到应用退后台时可以调用此接口

{% hint style="info" %}
从5.0.1（native）版本开始，如果配置了离线推送，会收到厂商的离线推送通道下发的通知栏消息。
{% endhint %}

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

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
    //doForeground
    V2TimCallback doForegroundRes = await TencentImSDKPlugin.v2TIMManager
        .getOfflinePushManager()
        .doForeground();
    if (doForegroundRes.code == 0) {
      //调用成功后的逻辑
    }
```

---
description: 标记所有消息为已读
---

# markAllMessageAsRead

## API功能介绍

标记所有消息为已读

## 参数详解

{% hint style="info" %}
此API无参数。
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
// 标记所有消息为已读
    V2TimCallback markAllMessageAsReadRes =
        await TencentImSDKPlugin.v2TIMManager
            .getMessageManager()
            .markAllMessageAsRead()
    if(markAllMessageAsReadRes.code==0){
      // 标记成功
    }
```

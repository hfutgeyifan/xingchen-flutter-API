---
description: 标记所有消息为已读
---

# markAllMessageAsRead

## API功能介绍

标记所有消息为已读

* 调用次API后会收到 `onConversationChanged` 回调，可以在此回调中更新 UI。

{% hint style="info" %}
清空会话未读消息数功能仅增强版 5.8.1668 及以上版本支持。
{% endhint %}

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

---
description: 设置群组消息已读√
---

# markGroupMessageAsRead

## 功能介绍

设置群组消息已读

* 调用次API后会收到 [`onConversationChanged`](../callbacks/onconversationchangedcallback.md) 回调，可以在此回调中更新 UI。

{% hint style="info" %}
清空会话未读消息数功能仅增强版 5.8.1668 及以上版本支持。
{% endhint %}

## 参数详解

| 参数名称    | 参数类型   | 是否必填 | 描述            |
| ------- | ------ | ---- | ------------- |
| groupID | String | 是    | 需要设置消息已读的群组id |

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

## 代码示例  &#x20;

```dart
    // 设置单聊消息已读
    V2TimCallback markGroupMessageAsReadRes =
        await TencentImSDKPlugin.v2TIMManager
            .getMessageManager()
            .markGroupMessageAsRead(groupID: "groupID");// 需要设置消息已读的群组id
    if(markGroupMessageAsReadRes.code==0){
      // 标记成功
    }
```

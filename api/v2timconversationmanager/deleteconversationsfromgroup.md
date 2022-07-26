---
description: 从一个会话分组中删除会话
---

# deleteConversationsFromGroup

## 功能介绍

从一个会话分组中删除会话

{% hint style="info" %}
注意：

1. 4.0.8及以后版本支持。
2. web不支持
{% endhint %}

## 参数详解

| 参数名称               | 参数类型           | 是否必填 | 描述              |
| ------------------ | -------------- | ---- | --------------- |
| groupName          | String         | 是    | 需要被删除会话的会话分组的名称 |
| conversationIDList | List< String > | 是    | 被删除的会话id列表      |

## 返回值

```dart
V2TimValueCallback<List<V2TimConversationOperationResult>>

{
    code : int
    desc : String
    data : List<V2TimConversationOperationResult>//请求结果列表
}
```

## 返回值详解

| 名称   | 数值类型                                                                                            | 描述                                                             |
| ---- | ----------------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                                             | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                                          | 请求结果描述                                                         |
| data | List< [V2TimConversationOperationResult](../guan-jian-lei/message/v2timconversationresult.md) > | 请求结果列表                                                         |

## 代码示例

```dart
    //从一个会话分组中删除会话
    V2TimValueCallback<List<V2TimConversationOperationResult>>
        deleteConversationsFromGroupRes = await TencentImSDKPlugin.v2TIMManager
            .getConversationManager()
            .deleteConversationsFromGroup(
                groupName: "groupName",
                conversationIDList: []);
    if (deleteConversationsFromGroupRes.code == 0) {
      // 删除成功
      deleteConversationsFromGroupRes.data?.forEach((element) {
        element.conversationID; // 被删除的会话id
        element.resultCode; // 此条会话的操作结果错误码
        element.resultInfo; // 此条会话的操作结果描述
      });
    }
```

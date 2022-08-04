---
description: 添加会话到一个会话分组
---

# addConversationsToGroup

## 功能介绍

添加会话到一个会话分组

{% hint style="info" %}
注意：

1. 4.0.8及以后版本支持。
2. web不支持
{% endhint %}

## 参数详解

| 参数名称               | 参数类型           | 是否必填 | 描述              |
| ------------------ | -------------- | ---- | --------------- |
| groupName          | String         | 是    | 需要被添加会话的会话分组的名称 |
| conversationIDList | List< String > | 是    | 被添加的会话id列表      |

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
| data | List< [V2TimConversationOperationResult](../keyClass/message/v2timconversationresult.md) > | 请求结果列表                                                         |

## 代码示例

```dart
    //添加会话到一个会话分组
    V2TimValueCallback<List<V2TimConversationOperationResult>>
        addConversationsToGroupRes = await TencentImSDKPlugin.v2TIMManager
            .getConversationManager()
            .addConversationsToGroup(
                groupName: "groupName",//需要被添加会话的会话分组的名称
                conversationIDList: []);//被添加的会话id列表
    if (addConversationsToGroupRes.code == 0) {
      // 添加成功
      addConversationsToGroupRes.data?.forEach((element) {
        element.conversationID; // 被添加的会话id
        element.resultCode; // 此条会话的操作结果错误码
        element.resultInfo; // 此条会话的操作结果描述
      });
    }
```

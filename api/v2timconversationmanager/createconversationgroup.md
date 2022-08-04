---
description: 创建会话分组√
---

# createConversationGroup

## 功能介绍

创建会话分组

{% hint style="info" %}
注意：

1. 4.0.8及以后版本支持。
2. web不支持
{% endhint %}

## 参数详解

| 参数名称               | 参数类型           | 是否必填 | 描述                 |
| ------------------ | -------------- | ---- | ------------------ |
| conversationIDList | List< String > | 是    | 需要放入创建的会话分组的会话id列表 |
| groupName          | String         | 是    | 创建的会话分组的名称         |

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
    //创建会话分组
    V2TimValueCallback<List<V2TimConversationOperationResult>>
        setConversationCustomDataRes = await TencentImSDKPlugin.v2TIMManager
            .getConversationManager()
            .createConversationGroup(
                groupName: "groupName",// 创建的会话分组的名称
                conversationIDList: []);// 需要放入创建的会话分组的会话id列表
    if (setConversationCustomDataRes.code == 0) {
      // 创建设置成功
      setConversationCustomDataRes.data?.forEach((element) {
        element.conversationID; // 被添加的会话id
        element.resultCode; // 此条会话的操作结果错误码
        element.resultInfo; // 此条会话的操作结果描述
      });
    }
```

---
description: 标记会话
---

# markConversation

## 功能介绍

标记会话

flutter中使用markType可参考 [V2TimConversationMarkType](../../sdkapi/enums/v2timconversationmarktype.md)

如果已有标记不能满足您的需求，您可以自定义扩展标记，扩展标记需要满足以下两个条件：

* 扩展标记值不能和 V2TIMConversation 已有的标记值冲突
* 扩展标记值必须是 0x1L << n 的位移值（32 <= n < 64，即 n 必须大于等于 32 并且小于 64），比如自定义 0x1L << 32 标记值表示 "iPhone 在线"。扩展标记值不能设置为 0x1 << 32，要设置为 0x1L << 32，明确告诉编译器是 64 位的整型常量。

{% hint style="info" %}
注意：

1. 4.0.8及以后版本支持。
2. web不支持
3. 旗舰版支持此功能
{% endhint %}

## 参数详解

| 参数名称               | 参数类型                                                                               | 是否必填 | 描述          |
| ------------------ | ---------------------------------------------------------------------------------- | ---- | ----------- |
| markType           | [V2TimConversationMarkType](../../sdkapi/enums/v2timconversationmarktype.md)/扩展标记值 | 是    | 标记类型        |
| enableMark         | bool                                                                               | 是    | 是否支持标记功能    |
| conversationIDList | List< String >                                                                     | 是    | 需要标记的会话id列表 |

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
    //标记会话
    V2TimValueCallback<List<V2TimConversationOperationResult>>
        markConversationRes = await TencentImSDKPlugin.v2TIMManager
            .getConversationManager()
            .markConversation(
                markType: 0,//标记类型
                enableMark: true,//是否支持标记功能
                conversationIDList: []);//需要标记的会话id列表
    if (markConversationRes.code == 0) {
      // 标记成功
      markConversationRes.data?.forEach((element) {
        element.conversationID; // 被标记的会话id
        element.resultCode; // 此条会话的操作结果错误码
        element.resultInfo; // 此条会话的操作结果描述
      });
    }
```

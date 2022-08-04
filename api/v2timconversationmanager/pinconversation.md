---
description: 会话置顶√
---

# pinConversation

## 功能介绍

会话置顶

* 会话的顺序，按[`V2TimConversation`](../keyClass/message/v2timconversation.md) 对象的 `orderKey` 字段排序。`orderKey` 字段是整型数，当发送新消息、接收新消息、设置草稿或置顶会话时，会话被激活，`orderKey` 字段会增大。
* 需要注意的是，被置顶会话始终排在非置顶会话的前面，如果同时置顶多个会话，这几个会话之间的相对顺序仍然会保持，例如，有 5 个依次排序的会话 1、2、3、4、5，同时置顶会话 2 和 3，置顶后的顺序是 2、3、1、4、5，显然，会话 2 和 3 排在最前面，并且会话 2 仍然排在 3 的前面。
* 调用 [`getConversationList`](getconversationlist.md) 获取会话列表时，该接口会先返回置顶的会话，再返回未置顶的会话。您可以通过 [`V2TIMConversation`](../keyClass/message/v2timconversation.md) 对象的 `isPinned` 字段，检查会话有没有置顶。
* 如果您事先调用了 [`addConversationListener`](addconversationlistener.md)添加会话监听器，就可以在 `onConversationChanged` 中获取到 [`V2TimConversation`](../keyClass/message/v2timconversation.md) 对象的 `isPinned` 字段值。根据这个字段可以判断会话的置顶状态是否变化。

## 参数详解

| 参数名称           | 参数类型   | 是否必填 | 描述            |
| -------------- | ------ | ---- | ------------- |
| conversationID | String | 是    | 需要修改置顶属性的会话id |
| isPinned       | bool   | 是    | 是否置顶          |

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
    //会话置顶
    V2TimCallback pinConversationRes = await TencentImSDKPlugin.v2TIMManager
        .getConversationManager()
        .pinConversation(
          conversationID: "",//需要修改置顶属性的会话id
          isPinned: true);//是否置顶
    if (pinConversationRes.code == 0) {
      //设置置顶成功
    }
```

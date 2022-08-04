---
description: 获取没有格式化的会话信息√
---

# getConversationListWithoutFormat

## 功能介绍

获取会话列表

用户的会话以列表的形式返回，列表中存储的是 [`V2TIMConversation`](../keyClass/message/v2timconversation.md) 对象。目前 IM SDK 对会话列表的排序规则为：

* Flutter sdk 3.8.0及以后版本, 该接口获取的会话列表默认已经按照会话对象的 `orderKey` 做了排序。`orderKey` 值越大，代表该会话排序越靠前。`orderKey` 字段是整型数，当发送新消息、接收新消息、设置草稿或置顶会话时，会话被激活，`orderKey` 字段会增大。
* Flutter sdk 3.8.0 以前版本，该接口获取的会话列表默认已经按照会话 `lastMessage` 的`timestamp` 做了排序。`timestamp` 越大，会话越靠前。

{% hint style="info" %}
注意：

该接口拉取的是本地缓存的会话，如果服务器会话有更新，SDK 内部会自动同步，然后在 [`V2TIMConversationListener`](../keyClass/listener/v2timconversationlistener.md) 回调告知客户。

在某些场景下，可能出现会话的 `lastMessage` 为空（例如清空会话消息）。如果您使用 5.5.892 以前的 SDK，使用 `lastMessage` 排序时需要额外处理这种异常。我们建议您升级到 5.5.892 及以后的版本，使用 `orderKey` 字段排序。

最多能拉取到最近的5000个会话。
{% endhint %}

## 参数详解

| 参数名称    | 参数类型   | 是否必填 | 描述                                            |
| ------- | ------ | ---- | --------------------------------------------- |
| nextSeq | String | 是    | 分页拉取的游标，第一次默认取传 0，后续分页拉传上一次分页拉取成功回调里的 nextSeq |
| count   | int    | 是    | 分页拉取的个数，一次分页拉取不宜太多，会影响拉取的速度，建议每次拉取 100 个会话    |

## 返回值

```dart
LinkedHashMap<dynamic, dynamic>
```

## 返回值详解

| 名称            | 数值类型                              | 描述                      |
| ------------- | --------------------------------- | ----------------------- |
| LinkedHashMap | LinkedHashMap< dynamic, dynamic > | 获取的会话信息(没有处理Native返回数据) |

## 代码示例

```dart
    //获取没有格式化的会话信息
    LinkedHashMap<dynamic, dynamic> getConversationListWithoutFormatRes =
        await TencentImSDKPlugin.v2TIMManager
            .getConversationManager()
            .getConversationListWithoutFormat(
                count: 100, //分页拉取的个数，一次分页拉取不宜太多，会影响拉取的速度，建议每次拉取 100 个会话
                nextSeq: "0" //分页拉取的游标，第一次默认取传 0，后续分页拉传上一次分页拉取成功回调里的 nextSeq
                );
    print(getConversationListWithoutFormatRes);//{code: 0, data: {nextSeq: 0, conversationList: [], isFinished: true}, desc: ok}
```

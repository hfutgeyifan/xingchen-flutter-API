---
description: 会话搜索结果单体属性
---

# V2TimMessageSearchResultItem

## 关键类描述

会话搜索结果单体属性

## 参数

### conversationID

* 参数类型 : String
* 参数描述：会话ID

### messageCount

* 参数类型 : int
* 参数描述：当前会话一共搜索到了多少条符合要求的消息

### messageList

* 参数类型 : List< [V2TimMessage](v2timmessage.md) >
* 参数描述：满足搜索条件的消息列表

{% hint style="info" %}


如果您本次搜索【[指定会话](v2timmessagesearchparam.md)】，那么 messageList 中装载的是本会话中所有满足搜索条件的消息列表。

如果您本次搜索【[全部会话](v2timmessagesearchparam.md)】，那么 messageList 中装载的消息条数会有如下两种可能：

* 如果某个会话中匹配到的消息条数 > 1，则 messageList 为空，您可以在 UI 上显示“ messageCount 条相关记录”。
* 如果某个会话中匹配到的消息条数 = 1，则 messageList 为匹配到的那条消息，您可以在 UI 上显示之，并高亮匹配关键词。
{% endhint %}

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述：返回会话搜索结果单体属性的JSON格式

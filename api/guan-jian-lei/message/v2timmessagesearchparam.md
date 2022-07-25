---
description: 消息搜索参数
---

# V2TimMessageSearchParam

## 关键类描述

消息搜索参数

## 参数

### conversationID

* 参数类型 : String
* 参数描述 : 搜索“全部会话”还是搜索“指定的会话”：

{% hint style="info" %}
如果设置 conversationID == null，代表搜索全部会话。

如果设置 conversationID != null，代表搜索指定会话。
{% endhint %}

### keywordList

* 参数类型 : List< String >
* 参数描述 : 关键字列表，最多支持5个。当消息发送者以及消息类型均未指定时，关键字列表必须非空；否则，关键字列表可以为空。

### type

* 参数类型 : int
* 参数描述 : 获取历史消息类型  具体见[HistoryMsgGetTypeEnum](../../enums/historymsggettypeenum.md)

### userIDList

* 参数类型 : List< String >
* 参数描述 : 指定 userID 发送的消息，最多支持5个。

### messageTypeList

* 参数类型 : List< int >
* 参数描述 : 指定搜索的消息类型集合，传 null 表示搜索支持的全部类型消息（V2TIMFaceElem 和 V2TIMGroupTipsElem 不支持）取值详情见MessageElemType。

### searchTimePosition

* 参数类型 : int
* 参数描述 : 搜索的起始时间点。默认为0即代表从现在开始搜索。UTC 时间戳，单位：秒

### searchTimePeriod

* 参数类型 : int
* 参数描述 : 从起始时间点开始的过去时间范围，单位秒。默认为0即代表不限制时间范围，传24x60x60代表过去一天。

### pageSize

* 参数类型 : int
* 参数描述 : 每页结果数量：用于分页展示查找结果，如不希望分页可将其设置成 0，但如果结果太多，可能会带来性能问题。默认为100。

### pageIndex

* 参数类型 : int
* 参数描述 : 分页的页号：用于分页展示查找结果，从零开始起步。

{% hint style="info" %}
比如：您希望每页展示 10 条结果，请按照如下规则调用：

* 首次调用：通过参数 pageSize = 10, pageIndex = 0 调用 searchLocalMessage，从结果回调中的 totalCount 可以获知总共有多少条结果。
* 计算页数：可以获知总页数：totalPage = (totalCount % pageSize == 0) ? (totalCount / pageSize) : (totalCount / pageSize + 1) 。
* 再次调用：可以通过指定参数 pageIndex （pageIndex < totalPage）返回后续页号的结果。
{% endhint %}

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述 : 返回消息搜索参数的JSON格式

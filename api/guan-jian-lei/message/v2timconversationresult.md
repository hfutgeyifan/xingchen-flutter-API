---
description: 会话列表拉取结果
---

# V2TimConversationResult

## 关键类描述

会话列表拉取结果

## 参数

### nextSeq

* 参数类型 : String
* 参数描述：分页拉取的游标

### isFinished

* 参数类型 : bool
* 参数描述：会话列表是否已经拉取完毕

{% hint style="info" %}
true:拉取完毕&#x20;

false:还有会话需要继续拉取
{% endhint %}

### conversationList

* 参数类型 : List< [V2TimConversation](v2timconversation.md) >
* 参数描述：会话列表

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述：返回会话列表拉取结果的JSON格式

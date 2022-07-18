---
description: 合并消息单体属性
---

# V2TimMergerElem

## 关键类描述

合并消息单体属性

## 参数

### isLayersOverLimit

* 参数类型 : bool
* 参数描述：合并嵌套层数是否超过 100 层

{% hint style="info" %}
合并消息里面又包含合并消息我们称之为合并嵌套，合并嵌套层数不能超过 100 层。

如果超过限制，layersOverLimit 会返回true，title 和 abstractList 会返回 null，downloadMergerMessage 会返回 ERR\_MERGER\_MSG\_LAYERS\_OVER\_LIMIT 错误码。
{% endhint %}

### title

* 参数类型 : String
* 参数描述：合并消息 title

### abstractList

* 参数类型 : List< String >
* 参数描述：合并消息摘要列表

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述：返回合并消息单体属性的JSON格式

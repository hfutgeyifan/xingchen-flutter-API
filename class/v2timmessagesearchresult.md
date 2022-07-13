---
description: 会话搜索结果
---

# V2TimMessageSearchResult

## 关键类描述

会话搜索结果

## 参数

### totalCount

* 参数类型 : String
* 参数描述：如果您本次搜索【指定会话】，那么返回满足搜索条件的消息总数量； 如果您本次搜索【全部会话】，那么返回满足搜索条件的消息所在的所有会话总数量。

### messageSearchResultItems

* 参数类型 : List< V2TimMessageSearchResultItem >
* 参数描述：如果您本次搜索【指定会话】，那么返回结果列表只包含该会话结果； 如果您本次搜索【全部会话】，那么对满足搜索条件的消息根据会话 ID 分组，分页返回分组结果；

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述：返回会话搜索结果的JSON格式

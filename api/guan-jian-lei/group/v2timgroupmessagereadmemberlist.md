---
description: 群消息已读群成员列表
---

# V2TimGroupMessageReadMemberList

## 关键类描述

群消息已读群成员列表

## 参数

### nextSeq

* 参数类型 : String
* 参数描述：分页拉取的 seq 如果为 0 表示拉取结束

### isFinished

* 参数类型 : bool
* 参数描述：成员列表是否已经拉取完毕

### memberInfoList

* 参数类型 : List< V2TimGroupMemberInfo >
* 参数描述：群消息已读或未读群成员列表

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述：返回群消息已读群成员列表的JSON格式

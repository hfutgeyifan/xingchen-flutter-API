---
description: 查询话题信息结果
---

# V2TIMTopicInfoResult

## 关键类描述

查询话题信息结果

## 参数

### errorCode

* 参数类型 : int
* 参数描述 : 结果 0：成功；非0：失败

### errorMessage

* 参数类型 : String
* 参数描述 : 如果获取失败，会返回错误信息

### topicInfo

* 参数类型 : [V2TimTopicInfo](v2timtopicinfo.md)
* 参数描述 : 如果获取成功，会返回对应的话题信息

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述 : 返回查询话题信息结果的JSON格式


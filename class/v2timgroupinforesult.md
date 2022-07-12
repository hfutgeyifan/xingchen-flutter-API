---
description: 获取群组资料结果
---

# V2TimGroupInfoResult

## 关键类描述

获取群组资料结果

## 参数

### resultCode

* 参数类型 : int
* 参数描述：结果 0：成功；非0：失败

### resultMessage

* 参数类型 : String
* 参数描述：如果获取失败，会返回错误信息

### groupInfo

* 参数类型 : V2TimGroupInfo
* 参数描述：如果获取成功，会返回对应的 info

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述：返回获取群组资料结果的JSON格式

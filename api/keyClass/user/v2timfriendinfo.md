---
description: 好友资料
---

# V2TimFriendInfo

## 关键类描述

好友资料

## 参数

### userID

* 参数类型 : String
* 参数描述 : 好友 ID

### friendRemark

* 参数类型 : String
* 参数描述 : 好友备注

### friendGroups

* 参数类型 : List< String >
* 参数描述 : 好友所在分组列表

### friendCustomInfo

* 参数类型 : Map< String, String >
* 参数描述 : 好友自定义字段 首先要在 [控制台](https://console.cloud.tencent.com/im) (功能配置 -> 好友自定义字段) 配置好友自定义字段，然后再调用该接口进行设置，key 值不需要加 Tag\_SNS\_Custom\_ 前缀。

### userProfile

* 参数类型 : [V2TimUserFullInfo](v2timuserfullinfo.md)
* 参数描述 : 好友个人资料

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述 : 返回好友资料的JSON格式

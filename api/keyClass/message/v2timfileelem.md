---
description: 文件消息单体属性
---

# V2TimFileElem

## 关键类描述

文件消息单体属性

## 参数

### path

* 参数类型 : String
* 参数描述 : 文件路径（只有发送方才能获取到）

### fileName

* 参数类型 : String
* 参数描述 : 文件显示名称

### UUID

* 参数类型 : String
* 参数描述 : 文件 ID,内部标识，可用于外部缓存 key

### url

* 参数类型 : String
* 参数描述 : 文件的 URL 下载地址

### fileSize

* 参数类型 : int
* 参数描述 : 文件大小

### localUrl

* 参数类型 : String
* 参数描述 : 文件下载后的本地路径

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述 : 返回文件消息单体属性的JSON格式

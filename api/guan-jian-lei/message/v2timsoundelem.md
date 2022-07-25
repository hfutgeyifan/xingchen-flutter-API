---
description: 语音消息单体属性
---

# V2TimSoundElem

## 关键类描述

语音消息单体属性

## 参数

### path

* 参数类型 : String
* 参数描述 : 语音文件路径（只有发送方才能获取到）

### UUID

* 参数类型 : String
* 参数描述 : 语音消息内部 ID

### dataSize

* 参数类型 : int
* 参数描述 : 语音数据大小

### duration

* 参数类型 : int
* 参数描述 : 语音长度（秒）

### url

* 参数类型 : String
* 参数描述 : 语音文件的 URL 下载地址

### localUrl

* 参数类型 : String
* 参数描述 : 语音下载后的本地路径

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述 : 返回语音消息单体属性的JSON格式

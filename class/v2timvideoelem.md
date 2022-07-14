---
description: 视频消息单体属性
---

# V2TimVideoElem

## 关键类描述

视频消息单体属性

## 参数

### videoPath

* 参数类型 : String
* 参数描述：视频文件路径（只有发送方才能获取到）

### UUID

* 参数类型 : String
* 参数描述：视频 ID,内部标识，可用于外部缓存 key

### videoSize

* 参数类型 : int
* 参数描述：视频大小

### duration

* 参数类型 : int
* 参数描述：视频时长

### snapshotPath

* 参数类型 : String
* 参数描述：封面截图文件路径（只有发送方才能获取到）

### snapshotUUID

* 参数类型 : String
* 参数描述：封面截图 ID,内部标识，可用于外部缓存 key

### snapshotSize

* 参数类型 : int
* 参数描述：截图 size

### snapshotWidth

* 参数类型 : int
* 参数描述：封面截图宽

### snapshotHeight

* 参数类型 : int
* 参数描述：封面截图高

### videoUrl

* 参数类型 : String
* 参数描述：视频文件的 URL 下载地址

### snapshotUrl

* 参数类型 : String
* 参数描述：封面截图的 URL 下载地址

### localVideoUrl

* 参数类型 : String
* 参数描述：视频下载后的本地路径

### localSnapshotUrl

* 参数类型 : String
* 参数描述：封面截图下载后的本地路径

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述：返回视频消息单体属性的JSON格式

---
description: 携带请求结果与返回数据的类
---

# V2TimValueCallback

## 关键类描述

携带请求结果与返回数据的类

## 参数

### code

* 参数类型 : int
* 参数描述：请求结果的错误码

### data

* 参数类型 : T（根据不同接口而不同）
* 参数描述：请求结果携带的数据

### desc

* 参数类型 : String
* 参数描述：请求结果的描述

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述：返回携带请求结果与返回数据的类的JSON格式

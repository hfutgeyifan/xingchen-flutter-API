---
description: 群成员搜索参数
---

# V2TimGroupMemberSearchParam

## 关键类描述

群成员搜索参数

## 参数

### keywordList

* 参数类型 : List< String >
* 参数描述 : 搜索关键字列表，最多支持5个

### groupIDList

* 参数类型 : List< String >
* 参数描述 : 指定群 ID 列表，若为 null 则搜索全部群中的群成员

### isSearchMemberUserID

* 参数类型 : bool
* 参数描述 : 设置是否搜索群成员 userID，默认为true

### isSearchMemberNickName

* 参数类型 : bool
* 参数描述 : 设置是否搜索群成员昵称，默认为true

### isSearchMemberRemark

* 参数类型 : bool
* 参数描述 : 设置是否搜索群成员备注，默认为true

### isSearchMemberNameCard

* 参数类型 : bool
* 参数描述 : 设置是否搜索群成员名片，默认为true

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述 : 返回群成员搜索参数的JSON格式

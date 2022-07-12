---
description: 好友资料获取结果
---

# V2TimFriendInfoResult

## 关键类描述

好友资料获取结果

## 参数

### resultCode

参数类型 : int

参数描述：返回码

0:成功

### resultInfo

参数类型 : String

参数描述：返结果表述

### relation

参数类型 : int

参数描述：好友类型

0:不是好友

1:对方在我的好友列表中

2:我在对方的好友列表中

3:互为好友

### friendInfo

参数类型 : V2TimFriendInfo

参数描述：好友个人资料，如果不是好友，除了 userID 字段，其他字段都为空

### toJson

参数类型 : Map\<String, dynamic> toJson()

参数描述：返回好友资料获取结果的JSON格式

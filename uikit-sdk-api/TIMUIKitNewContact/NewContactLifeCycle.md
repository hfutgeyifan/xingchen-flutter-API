---
description: 对新的联系人操作时的钩子函数
---

# NewContactLifeCycle

## 关键类描述

对新的联系人操作时的钩子函数

## 参数

### shouldAcceptContactApplication

* 参数类型 : Future< bool > Function(String userID)
* 参数描述 : 在接受好友请求前的钩子函数

### shouldRefuseContactApplication

* 参数类型 : Future< bool > Function(String userID)
* 参数描述 : 在拒绝好友请求前的钩子函数

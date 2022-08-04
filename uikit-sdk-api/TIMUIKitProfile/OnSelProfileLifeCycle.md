---
description: 用户信息操作时的钩子函数
---

# OnSelProfileLifeCycle

## 关键类描述

用户信息操作时的钩子函数

## 参数

### shouldAddToBlockList

* 参数类型 : Future< bool > Function(String userID)
* 参数描述 : 在将用户拉入黑名单前的钩子函数

### shouldDeleteFriend

* 参数类型 : Future< bool > Function(String userID)
* 参数描述 : 在将用户删除前的钩子函数

### shouldAddFriend

* 参数类型 : Future< bool > Function(String userID)
* 参数描述 : 在添加用户前的钩子函数

### didGetFriendInfo

* 参数类型 : Future< [V2TimFriendInfo](../../api/keyClass/user/v2timfriendinfo.md)? > Function( [V2TimFriendInfo](../../api/keyClass/user/v2timfriendinfo.md)? friendInfo)
* 参数描述 : 在获取用户信息前的钩子函数

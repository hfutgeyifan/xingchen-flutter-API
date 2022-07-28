---
description: 关于用户信息操作的控制器
---

# TIMUIKitProfileController

## 关键类描述

关于用户信息操作的控制器

## 参数

### deleteFriend

* 参数类型 : Future< [V2TimFriendOperationResult](../../api/guan-jian-lei/user/v2timfriendoperationresult.md)? > Function(String userID)
* 参数描述 : 删除好友操作

### pinedConversation

* 参数类型 : Future< [V2TimCallback](../../api/guan-jian-lei/v2timcallback.md) > Function(bool isPined, String convID)
* 参数描述 : 会话置顶操作

### addUserToBlackList

* 参数类型 : Future< List< [V2TimFriendOperationResult](../../api/guan-jian-lei/user/v2timfriendoperationresult.md) >? > Function(bool shouldAdd, String userID)
* 参数描述 : 将用户添加到黑名单操作

### changeFriendVerificationMethod

* 参数类型 : Future< [V2TimCallback](../../api/guan-jian-lei/v2timcallback.md) > Function(int allowType)
* 参数描述 : 修改好友验证方式操作

### updateRemarks

* 参数类型 : Future< [V2TimCallback](../../api/guan-jian-lei/v2timcallback.md) > Function(String userID, String remark)
* 参数描述 : 更新备注操作

### setMessageDisturb

* 参数类型 : Future< [V2TimCallback](../../api/guan-jian-lei/v2timcallback.md) > Function(String userID, bool isDisturb)
* 参数描述 : 设置是否接收用户消息

### showTextInputBottomSheet

* 参数类型 : void Function(BuildContext context, String title, String tips, void Function(String) onSubmitted)
* 参数描述 : 展示下方文本输入框操作

### loadData

* 参数类型 : void Function(String userID)
* 参数描述 : 加载好友信息操作

### dispose

* 参数类型 : void Function()
* 参数描述 : model销毁操作

### addFriend

* 参数类型 : Future< [V2TimFriendOperationResult](../../api/guan-jian-lei/user/v2timfriendoperationresult.md)? > Function(String userID)
* 参数描述 : 添加好友操作

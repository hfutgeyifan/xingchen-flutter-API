---
description: 用于自定义构建用户信息页面不同部分的构造器
---

# ProfileWidgetBuilder

## 关键类描述

用于自定义构建用户信息页面不同部分的构造器

## 参数

### operationDivider

* 参数类型 : Widget Function()
* 参数描述 : 分割线组件

### remarkBar

* 参数类型 : Widget Function(String remark, Function()? handleTap)
* 参数描述 : 用户备注

### addToBlockListBar

* 参数类型 : Widget Function(bool isAsBlocked, Function(bool value)? onChange)
* 参数描述 : 添加黑名单功能

### pinConversationBar

* 参数类型 : Widget Function(bool isPinned, Function(bool value)? onChange)
* 参数描述 : 会话置顶功能

### messageMute

* 参数类型 : Widget Function(bool isMute, Function(bool value)? onChange)
* 参数描述 : 禁言用户功能

### operationItem

* 参数类型 : Widget Function({ required String operationName, required String type, bool? operationValue, String? operationText, void Function(bool newValue)? onSwitchChange, })
* 参数描述 : 用于重构默认操作栏样式

### searchBar

* 参数类型 : Widget Function([V2TimConversation](../../api/keyClass/message/v2timconversation.md) conversation)
* 参数描述 : 搜索组件（自定义）

### portraitBar

* 参数类型 : Widget Function([V2TimUserFullInfo](../../api/keyClass/user/v2timuserfullinfo.md)? userInfo)
* 参数描述 : 用户头像栏

### nicknameBar

* 参数类型 : Widget Function(String nickName)
* 参数描述 : 用户昵称栏

### userAccountBar

* 参数类型 : Widget Function(String userAccount)
* 参数描述 : 用户账号栏

### signatureBar

* 参数类型 : Widget Function(String signature)
* 参数描述 : 用户签名栏

### genderBar

* 参数类型 : Widget Function(int gender)
* 参数描述 : 用户性别

### birthdayBar

* 参数类型 : Widget Function(int? birthday)
* 参数描述 : 用户生日

### userInfoCard

* 参数类型 : Widget Function([V2TimUserFullInfo](../../api/keyClass/user/v2timuserfullinfo.md)? userInfo)
* 参数描述 : 用户信息卡片

### addAndDeleteArea

* 参数类型 : Widget Function([V2TimFriendInfo](../../api/keyClass/user/v2timfriendinfo.md) friendInfo, [V2TimConversation](../../api/keyClass/message/v2timconversation.md) conversation, int friendType, bool isDisturb)
* 参数描述 : 添加或删除功能

### customBuilderOne

* 参数类型 : Widget Function(bool isFriend, [V2TimFriendInfo](../../api/keyClass/user/v2timfriendinfo.md) friendInfo, [V2TimConversation](../../api/keyClass/message/v2timconversation.md) conversation)
* 参数描述 : 自定义区域一（自定义）

### customBuilderTwo

* 参数类型 : Widget Function(bool isFriend, [V2TimFriendInfo](../../api/keyClass/user/v2timfriendinfo.md) friendInfo, [V2TimConversation](../../api/keyClass/message/v2timconversation.md) conversation)
* 参数描述 : 自定义区域二（自定义）

### customBuilderThree

* 参数类型 : Widget Function(bool isFriend, [V2TimFriendInfo](../../api/keyClass/user/v2timfriendinfo.md) friendInfo, [V2TimConversation](../../api/keyClass/message/v2timconversation.md) conversation)
* 参数描述 : 自定义区域三（自定义）

### customBuilderFour

* 参数类型 : Widget Function(bool isFriend, [V2TimFriendInfo](../../api/keyClass/user/v2timfriendinfo.md) friendInfo, [V2TimConversation](../../api/keyClass/message/v2timconversation.md) conversation)
* 参数描述 : 自定义区域四（自定义）

### customBuilderFive

* 参数类型 : Widget Function(bool isFriend, [V2TimFriendInfo](../../api/keyClass/user/v2timfriendinfo.md) friendInfo, [V2TimConversation](../../api/keyClass/message/v2timconversation.md) conversation)
* 参数描述 : 自定义区域五（自定义）

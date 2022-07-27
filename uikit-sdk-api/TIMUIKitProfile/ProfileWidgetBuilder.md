---
description: 用于自定义构建用户信息页面不同部分的构造器
---

# ProfileWidgetBuilder

## 关键类描述

用于自定义构建用户信息页面不同部分的构造器

## 参数

### operationDivider

* 参数类型 : Widget Function()
* 参数描述 :&#x20;

### remarkBar

* 参数类型 : Widget Function(String remark, Function()? handleTap)
* 参数描述 :&#x20;

### addToBlockListBar

* 参数类型 : Widget Function(bool isAsBlocked, Function(bool value)? onChange)
* 参数描述 :&#x20;

### pinConversationBar

* 参数类型 : Widget Function(bool isPinned, Function(bool value)? onChange)
* 参数描述 :&#x20;

### messageMute

* 参数类型 : Widget Function(bool isMute, Function(bool value)? onChange)
* 参数描述 :&#x20;

### operationItem

* 参数类型 : Widget Function({ required String operationName, required String type, bool? operationValue, String? operationText, void Function(bool newValue)? onSwitchChange, })
* 参数描述 :&#x20;

### searchBar

* 参数类型 : Widget Function([V2TimConversation](../../api/guan-jian-lei/message/v2timconversation.md) conversation)
* 参数描述 :&#x20;

### portraitBar

* 参数类型 : Widget Function([V2TimUserFullInfo](../../api/guan-jian-lei/user/v2timuserfullinfo.md)? userInfo)
* 参数描述 :&#x20;

### nicknameBar

* 参数类型 : Widget Function(String nickName)
* 参数描述 :&#x20;

### userAccountBar

* 参数类型 : Widget Function(String userAccount)
* 参数描述 :&#x20;

### signatureBar

* 参数类型 : Widget Function(String signature)
* 参数描述 :&#x20;

### genderBar

* 参数类型 : Widget Function(int gender)
* 参数描述 :&#x20;

### birthdayBar

* 参数类型 : Widget Function(int? birthday)
* 参数描述 :&#x20;

### userInfoCard

* 参数类型 : Widget Function([V2TimUserFullInfo](../../api/guan-jian-lei/user/v2timuserfullinfo.md)? userInfo)
* 参数描述 :&#x20;

### addAndDeleteArea

* 参数类型 : Widget Function([V2TimFriendInfo](../../api/guan-jian-lei/user/v2timfriendinfo.md) friendInfo, [V2TimConversation](../../api/guan-jian-lei/message/v2timconversation.md) conversation, int friendType, bool isDisturb)
* 参数描述 :&#x20;

### customBuilderOne

* 参数类型 : Widget Function(bool isFriend, [V2TimFriendInfo](../../api/guan-jian-lei/user/v2timfriendinfo.md) friendInfo, [V2TimConversation](../../api/guan-jian-lei/message/v2timconversation.md) conversation)
* 参数描述 :&#x20;

### customBuilderTwo

* 参数类型 : Widget Function(bool isFriend, [V2TimFriendInfo](../../api/guan-jian-lei/user/v2timfriendinfo.md) friendInfo, [V2TimConversation](../../api/guan-jian-lei/message/v2timconversation.md) conversation)
* 参数描述 :&#x20;

### customBuilderThree

* 参数类型 : Widget Function(bool isFriend, [V2TimFriendInfo](../../api/guan-jian-lei/user/v2timfriendinfo.md) friendInfo, [V2TimConversation](../../api/guan-jian-lei/message/v2timconversation.md) conversation)
* 参数描述 :&#x20;

### customBuilderFour

* 参数类型 : Widget Function(bool isFriend, [V2TimFriendInfo](../../api/guan-jian-lei/user/v2timfriendinfo.md) friendInfo, [V2TimConversation](../../api/guan-jian-lei/message/v2timconversation.md) conversation)
* 参数描述 :&#x20;

### customBuilderFive

* 参数类型 : Widget Function(bool isFriend, [V2TimFriendInfo](../../api/guan-jian-lei/user/v2timfriendinfo.md) friendInfo, [V2TimConversation](../../api/guan-jian-lei/message/v2timconversation.md) conversation)
* 参数描述 :&#x20;

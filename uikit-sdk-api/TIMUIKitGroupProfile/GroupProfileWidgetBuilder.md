---
description: 用于自定义构建群组信息页面不同部分的构造器
---

# GroupProfileWidgetBuilder

## 关键类描述

用于自定义构建群组信息页面不同部分的构造器

## 参数

### detailCard

* 参数类型 : Widget Function([V2TimGroupInfo](../../api/guan-jian-lei/group/v2timgroupinfo.md) groupInfo, Function(String updateGroupName)? updateGroupName)
* 参数描述 : 分割线组件

### memberListTile

* 参数类型 : Widget Function(List< [V2TimGroupMemberFullInfo](../../api/guan-jian-lei/group/v2timgroupmemberfullinfo.md)? > memberList)
* 参数描述 : 用户备注

### groupNotice

* 参数类型 : Widget Function(String currentNotice, Function() toDefaultNoticeEditPage, Function(String newNotice) setGroupNotice)
* 参数描述 : 添加黑名单功能

### groupManage

* 参数类型 : Widget Function(Function() toDefaultGroupManagementPage)
* 参数描述 : 会话置顶功能

### searchMessage

* 参数类型 : Widget Function()
* 参数描述 : 禁言用户功能

### operationDivider

* 参数类型 : Widget Function()
* 参数描述 : 用于重构默认操作栏样式

### groupTypeBar

* 参数类型 : Widget Function(String groupType)
* 参数描述 : 搜索组件（自定义）

### groupJoiningModeBar

* 参数类型 : Widget Function(int [groupAddOptType](../../api/enums/groupaddopttypeenum.md), Function(int addOpt) handleActionTap)
* 参数描述 : 用户头像栏

### nameCardBar

* 参数类型 : Widget Function(String nameCard, Function(String newName)
* 参数描述 : 用户昵称栏

### muteGroupMessageBar

* 参数类型 : Widget Function(bool isMute, Function(bool isMute) setMute)
* 参数描述 : 用户账号栏

### pinedConversationBar

* 参数类型 : Widget Function(bool isPined, Function(bool isMute) pinedConversation)
* 参数描述 : 用户签名栏

### buttonArea

* 参数类型 : Widget Function([V2TimGroupInfo](../../api/guan-jian-lei/group/v2timgroupinfo.md) groupInfo, List< [V2TimGroupMemberFullInfo](../../api/guan-jian-lei/group/v2timgroupmemberfullinfo.md)? > groupMemberList)
* 参数描述 : 用户性别

### customBuilderOne

* 参数类型 : Widget Function(bool isFriend, [V2TimFriendInfo](../../api/guan-jian-lei/user/v2timfriendinfo.md) friendInfo, [V2TimConversation](../../api/guan-jian-lei/message/v2timconversation.md) conversation)
* 参数描述 : 自定义区域一（自定义）

### customBuilderTwo

* 参数类型 : Widget Function(bool isFriend, [V2TimFriendInfo](../../api/guan-jian-lei/user/v2timfriendinfo.md) friendInfo, [V2TimConversation](../../api/guan-jian-lei/message/v2timconversation.md) conversation)
* 参数描述 : 自定义区域二（自定义）

### customBuilderThree

* 参数类型 : Widget Function(bool isFriend, [V2TimFriendInfo](../../api/guan-jian-lei/user/v2timfriendinfo.md) friendInfo, [V2TimConversation](../../api/guan-jian-lei/message/v2timconversation.md) conversation)
* 参数描述 : 自定义区域三（自定义）

### customBuilderFour

* 参数类型 : Widget Function(bool isFriend, [V2TimFriendInfo](../../api/guan-jian-lei/user/v2timfriendinfo.md) friendInfo, [V2TimConversation](../../api/guan-jian-lei/message/v2timconversation.md) conversation)
* 参数描述 : 自定义区域四（自定义）

### customBuilderFive

* 参数类型 : Widget Function(bool isFriend, [V2TimFriendInfo](../../api/guan-jian-lei/user/v2timfriendinfo.md) friendInfo, [V2TimConversation](../../api/guan-jian-lei/message/v2timconversation.md) conversation)
* 参数描述 : 自定义区域五（自定义）

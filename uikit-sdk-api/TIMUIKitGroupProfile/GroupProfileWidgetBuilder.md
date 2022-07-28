---
description: 用于自定义构建群组信息页面不同部分的构造器
---

# GroupProfileWidgetBuilder

## 关键类描述

用于自定义构建群组信息页面不同部分的构造器

## 参数

### detailCard

* 参数类型 : Widget Function([V2TimGroupInfo](../../api/guan-jian-lei/group/v2timgroupinfo.md) groupInfo, Function(String updateGroupName)? updateGroupName)
* 参数描述 : 群组详细信息

### memberListTile

* 参数类型 : Widget Function(List< [V2TimGroupMemberFullInfo](../../api/guan-jian-lei/group/v2timgroupmemberfullinfo.md)? > memberList)
* 参数描述 : 群组成员列表

### groupNotice

* 参数类型 : Widget Function(String currentNotice, Function() toDefaultNoticeEditPage, Function(String newNotice) setGroupNotice)
* 参数描述 : 群公告

### groupManage

* 参数类型 : Widget Function(Function() toDefaultGroupManagementPage)
* 参数描述 : 群管理

### searchMessage

* 参数类型 : Widget Function()
* 参数描述 : 查找聊天内容

### operationDivider

* 参数类型 : Widget Function()
* 参数描述 : 分割线

### groupTypeBar

* 参数类型 : Widget Function(String groupType)
* 参数描述 : 群类型栏

### groupJoiningModeBar

* 参数类型 : Widget Function(int [groupAddOptType](../../api/enums/groupaddopttypeenum.md), Function(int addOpt) handleActionTap)
* 参数描述 : 加群方式设置

### nameCardBar

* 参数类型 : Widget Function(String nameCard, Function(String newName)
* 参数描述 : 我的群昵称

### muteGroupMessageBar

* 参数类型 : Widget Function(bool isMute, Function(bool isMute) setMute)
* 参数描述 : 消息免打扰

### pinedConversationBar

* 参数类型 : Widget Function(bool isPined, Function(bool isMute) pinedConversation)
* 参数描述 : 置顶聊天功能

### buttonArea

* 参数类型 : Widget Function([V2TimGroupInfo](../../api/guan-jian-lei/group/v2timgroupinfo.md) groupInfo, List< [V2TimGroupMemberFullInfo](../../api/guan-jian-lei/group/v2timgroupmemberfullinfo.md)? > groupMemberList)
* 参数描述 : 按钮功能区

### customBuilderOne

* 参数类型 : Widget Function([V2TimGroupInfo](../../api/guan-jian-lei/group/v2timgroupinfo.md) groupInfo, List< [V2TimGroupMemberFullInfo](../../api/guan-jian-lei/group/v2timgroupmemberfullinfo.md)? > groupMemberList)
* 参数描述 : 自定义区域一（自定义）

### customBuilderTwo

* 参数类型 : Widget Function([V2TimGroupInfo](../../api/guan-jian-lei/group/v2timgroupinfo.md) groupInfo, List< [V2TimGroupMemberFullInfo](../../api/guan-jian-lei/group/v2timgroupmemberfullinfo.md)? > groupMemberList)
* 参数描述 : 自定义区域二（自定义）

### customBuilderThree

* 参数类型 : Widget Function([V2TimGroupInfo](../../api/guan-jian-lei/group/v2timgroupinfo.md) groupInfo, List< [V2TimGroupMemberFullInfo](../../api/guan-jian-lei/group/v2timgroupmemberfullinfo.md)? > groupMemberList)
* 参数描述 : 自定义区域三（自定义）

### customBuilderFour

* 参数类型 : Widget Function([V2TimGroupInfo](../../api/guan-jian-lei/group/v2timgroupinfo.md) groupInfo, List< [V2TimGroupMemberFullInfo](../../api/guan-jian-lei/group/v2timgroupmemberfullinfo.md)? > groupMemberList)
* 参数描述 : 自定义区域四（自定义）

### customBuilderFive

* 参数类型 : Widget Function([V2TimGroupInfo](../../api/guan-jian-lei/group/v2timgroupinfo.md) groupInfo, List< [V2TimGroupMemberFullInfo](../../api/guan-jian-lei/group/v2timgroupmemberfullinfo.md)? > groupMemberList)
* 参数描述 : 自定义区域五（自定义）

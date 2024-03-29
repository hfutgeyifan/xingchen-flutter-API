---
description: 群组信息的监听器回调
---

# V2TimGroupListener

## 关键类描述

群组信息的监听器回调

## 参数

### onApplicationProcessed

* 参数类型 : [OnApplicationProcessedCallback](../../callbacks/onapplicationprocessedcallback.md)
* 参数描述 : 加群请求已经被群主或管理员处理了（只有申请人能够收到）

### onGrantAdministrator

* 参数类型 : [OnGrantAdministratorCallback](../../callbacks/ongrantadministratorcallback.md)
* 参数描述 : 指定管理员身份

### onGroupAttributeChanged

* 参数类型 : [OnGroupAttributeChangedCallback](../../callbacks/ongroupattributechangedcallback.md)
* 参数描述 : 群组属性被修改的回调函数

### onGroupCreated

* 参数类型 : [OnGroupCreatedCallback](../../callbacks/ongroupcreatedcallback.md)
* 参数描述 : 创建群（主要用于多端同步）

### onGroupDismissed

* 参数类型 : [OnGroupDismissedCallback](../../callbacks/ongroupdismissedcallback.md)
* 参数描述 : 群组被解散（全员能收到）

### onGroupInfoChanged

* 参数类型 : [OnGroupInfoChangedCallback](../../callbacks/ongroupinfochangedcallback.md)
* 参数描述 : 群信息被修改（全员能收到）

### onGroupRecycled

* 参数类型 : [OnGroupRecycledCallback](../../callbacks/ongrouprecycledcallback.md)
* 参数描述 : 群组被回收（全员能收到）

### onMemberEnter

* 参数类型 : [OnMemberEnterCallback](../../callbacks/onmemberentercallback.md)
* 参数描述 : 有用户进入群（全员能够收到）

### onMemberInfoChanged

* 参数类型 : [OnMemberInfoChangedCallback](../../callbacks/onmemberinfochangedcallback.md)
* 参数描述 : 群成员信息被修改（全员能收到）

### onMemberInvited

* 参数类型 : [OnMemberInvitedCallback](../../callbacks/onmemberinvitedcallback.md)
* 参数描述 : 有用户被拉入某群（全员能够收到）

### onMemberKicked

* 参数类型 : [OnMemberKickedCallback](../../callbacks/onmemberkickedcallback.md)
* 参数描述 : 有用户被踢出某群（全员能够收到）

### onMemberLeave

* 参数类型 : [OnMemberLeaveCallback](../../callbacks/onmemberleavecallback.md)
* 参数描述 : 有用户主动离开群（全员能够收到）

### onQuitFromGroup

* 参数类型 : [OnQuitFromGroupCallback](../../callbacks/onquitfromgroupcallback.md)
* 参数描述 : 主动退出群组（主要用于多端同步，直播群（AVChatRoom）不支持）

### onReceiveJoinApplication

* 参数类型 : [OnReceiveJoinApplicationCallback](../../callbacks/onreceivejoinapplicationcallback.md)
* 参数描述 : 有新的加群请求（只有群主或管理员会收到）

### onReceiveRESTCustomData

* 参数类型 : [OnReceiveRESTCustomDataCallback](../../callbacks/onreceiverestcustomdatacallback.md)
* 参数描述 : 收到 RESTAPI 下发的自定义系统消息

### onRevokeAdministrator

* 参数类型 : [OnRevokeAdministratorCallback](../../callbacks/onrevokeadministratorcallback.md)
* 参数描述 : 取消管理员身份

### onTopicCreated

* 参数类型 : [OnTopicCreated](../../callbacks/onTopicCreated.md)
* 参数描述 : 话题创建通知

### onTopicDeleted

* 参数类型 : [OnTopicDeleted](../../callbacks/onTopicDeleted.md)
* 参数描述 : 话题删除通知

### onTopicInfoChanged

* 参数类型 : [OnTopicInfoChanged](../../callbacks/onTopicInfoChanged.md)
* 参数描述 : 话题信息更新通知

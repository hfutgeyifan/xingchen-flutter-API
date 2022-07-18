---
description: 群组信息的监听器回调
---

# V2TimGroupListener

## 关键类描述

群组信息的监听器回调

## 参数

### onApplicationProcessed

* 参数类型 : OnApplicationProcessedCallback
* 参数描述：加群请求已经被群主或管理员处理了（只有申请人能够收到）

### onGrantAdministrator

* 参数类型 : OnGrantAdministratorCallback
* 参数描述：指定管理员身份

### onGroupAttributeChanged

* 参数类型 : OnGroupAttributeChangedCallback
* 参数描述：群组属性被修改的回调函数

### onGroupCreated

* 参数类型 : OnGroupCreatedCallback
* 参数描述：创建群（主要用于多端同步）

### onGroupDismissed

* 参数类型 : OnGroupDismissedCallback
* 参数描述：群组被解散（全员能收到）

### onGroupInfoChanged

* 参数类型 : OnGroupInfoChangedCallback
* 参数描述：群信息被修改（全员能收到）

### onGroupRecycled

* 参数类型 : OnGroupRecycledCallback
* 参数描述：群组被回收（全员能收到）

### onMemberEnter

* 参数类型 : OnMemberEnterCallback
* 参数描述：有用户进入群（全员能够收到）

### onMemberInfoChanged

* 参数类型 : OnMemberInfoChangedCallback
* 参数描述：群成员信息被修改（全员能收到）

### onMemberInvited

* 参数类型 : OnMemberInvitedCallback
* 参数描述：有用户被拉入某群（全员能够收到）

### onMemberKicked

* 参数类型 : OnMemberKickedCallback
* 参数描述：有用户被踢出某群（全员能够收到）

### onMemberLeave

* 参数类型 : OnMemberLeaveCallback
* 参数描述：有用户离开群（全员能够收到）

### onQuitFromGroup

* 参数类型 : OnQuitFromGroupCallback
* 参数描述：主动退出群组（主要用于多端同步，直播群（AVChatRoom）不支持）

### onReceiveJoinApplication

* 参数类型 : OnReceiveJoinApplicationCallback
* 参数描述：有新的加群请求（只有群主或管理员会收到）

### onReceiveRESTCustomData

* 参数类型 : OnReceiveRESTCustomDataCallback
* 参数描述：收到 RESTAPI 下发的自定义系统消息

### onRevokeAdministrator

* 参数类型 : OnRevokeAdministratorCallback
* 参数描述：取消管理员身份

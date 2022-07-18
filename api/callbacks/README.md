---
description: IM API中使用到的回调函数类型
---

# Callbacks

## Callbacks包含内容说明

IM API中使用到的回调函数类型

## 回调函数目录

| 回调函数名称                                                                              | 说明                                  |
| ----------------------------------------------------------------------------------- | ----------------------------------- |
| [VoidCallback](voidcallback.md)                                                     | 无返回参数的回调函数                          |
| [ErrorCallback](broken-reference)                                                   | 请求失败的回调函数                           |
| [OnApplicationProcessedCallback](broken-reference)                                  | 加群请求已经被群主或管理员处理了（只有申请人能够收到）         |
| [OnBlackListAddCallback](onblacklistaddcallback.md)                                 | 黑名单列表新增用户的回调                        |
| [OnBlackListDeletedCallback](onblacklistdeletedcallback.md)                         | 黑名单列表删除用户的回调                        |
| [OnConversationChangedCallback](onconversationchangedcallback.md)                   | 某些会话的关键信息发生变化                       |
| [OnFriendApplicationListAddedCallback](onfriendapplicationlistaddedcallback.md)     | 好友请求数量增加的回调                         |
| [OnFriendApplicationListDeletedCallback](onfriendapplicationlistdeletedcallback.md) | 好友请求数量减少的回调                         |
| [OnFriendApplicationListReadCallback](onfriendapplicationlistreadcallback.md)       | 好友请求已读的回调                           |
| [OnFriendInfoChangedCallback](onfriendinfochangedcallback.md)                       | 好友信息改变的回调                           |
| [OnFriendListAddedCallback](onfriendlistaddedcallback.md)                           | 好友列表增加人员的回调                         |
| [OnFriendListDeletedCallback](onfriendlistdeletedcallback.md)                       | 好友列表减少人员的回调                         |
| [OnGrantAdministratorCallback](ongrantadministratorcallback.md)                     | 指定管理员身份                             |
| [OnGroupAttributeChangedCallback](ongroupattributechangedcallback.md)               | 收到群属性更新的回调                          |
| [OnGroupCreatedCallback](ongroupcreatedcallback.md)                                 | 创建群（主要用于多端同步）                       |
| [OnGroupDismissedCallback](ongroupdismissedcallback.md)                             | 群被解散了（全员能收到）                        |
| [OnGroupInfoChangedCallback](ongroupinfochangedcallback.md)                         | 群信息被修改（全员能收到）                       |
| [OnGroupRecycledCallback](ongrouprecycledcallback.md)                               | 群被回收（全员能收到）                         |
| [OnInvitationCancelledCallback](oninvitationcancelledcallback.md)                   | 邀请被取消的回调                            |
| [OnInvitationTimeoutCallback](oninvitationtimeoutcallback.md)                       | 邀请超时的回调                             |
| [OnInviteeAcceptedCallback](oninviteeacceptedcallback.md)                           | 邀请被接受的回调                            |
| [OnInviteeRejectedCallback](oninviteerejectedcallback.md)                           | 邀请被拒绝的回调                            |
| [OnMemberEnterCallback](onmemberentercallback.md)                                   | 有用户加入群（全员能够收到）                      |
| [OnMemberInfoChangedCallback](onmemberinfochangedcallback.md)                       | 群成员信息被修改，仅支持禁言通知（全员能收到）             |
| [OnMemberInvitedCallback](onmemberinvitedcallback.md)                               | 某些人被拉入某群（全员能够收到）                    |
| [OnMemberKickedCallback](onmemberkickedcallback.md)                                 | 某些人被踢出某群（全员能够收到）                    |
| [OnMemberLeaveCallback](onmemberleavecallback.md)                                   | 有用户离开群（全员能够收到）                      |
| [OnNewConversation](onnewconversation.md)                                           | 有新的会话                               |
| [OnQuitFromGroupCallback](onquitfromgroupcallback.md)                               | 主动退出群组（主要用于多端同步，直播群（AVChatRoom）不支持） |
| [OnReceiveJoinApplicationCallback](onreceivejoinapplicationcallback.md)             | 有新的加群请求（只有群主或管理员会收到）                |
| [OnReceiveNewInvitationCallback](onreceivenewinvitationcallback.md)                 | 获取新的邀请的回调                           |
| [OnReceiveRESTCustomDataCallback](onreceiverestcustomdatacallback.md)               | 收到 RESTAPI 下发的自定义系统消息               |
| [OnRecvC2CReadReceiptCallback](onrecvc2creadreceiptcallback.md)                     | C2C 对端用户会话已读通知                      |
| [OnRecvMessageModified](onrecvmessagemodified.md)                                   | 消息内容被修改                             |
| [OnRecvMessageReadReceipts](onrecvmessagereadreceipts.md)                           | 消息已读回执通知                            |
| [OnRecvMessageRevokedCallback](onrecvmessagerevokedcallback.md)                     | 收到消息撤回的通知                           |
| [OnRecvNewMessageCallback](onrecvnewmessagecallback.md)                             | 收到新消息                               |
| [OnRevokeAdministratorCallback](onrevokeadministratorcallback.md)                   | 取消管理员身份                             |
| [OnSendMessageProgressCallback](onsendmessageprogresscallback.md)                   | 文件上传进度回调                            |
| [OnTotalUnreadMessageCountChanged](ontotalunreadmessagecountchanged.md)             | 会话未读总数变更通知                          |
| [OnUserStatusChanged](onuserstatuschanged.md)                                       | 用户状态变更通知                            |
| [V2TimUserFullInfoCallback](v2timuserfullinfocallback.md)                           | 登录用户的资料发生了更新更新                      |

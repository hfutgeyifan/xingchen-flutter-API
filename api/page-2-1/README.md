---
description: IM API中使用到的回调函数类型
---

# Copy of Callbacks

## Callbacks包含内容说明

IM API中使用到的回调函数类型

## 回调函数目录

| 回调函数名称                                                                                                    | 说明                                  |
| --------------------------------------------------------------------------------------------------------- | ----------------------------------- |
| VoidCallback                                                                                              |                                     |
| [ErrorCallback](../../class/callbacks/errorcallback.md)                                                   | 请求失败的回调函数                           |
| [OnApplicationProcessedCallback](../../class/callbacks/onapplicationprocessedcallback.md)                 | 加群请求已经被群主或管理员处理了（只有申请人能够收到）         |
| [OnBlackListAddCallback](../../class/callbacks/onblacklistaddcallback.md)                                 | 黑名单列表新增用户的回调                        |
| [OnBlackListDeletedCallback](../../class/callbacks/onblacklistdeletedcallback.md)                         | 黑名单列表删除用户的回调                        |
| [OnConversationChangedCallback](../../class/callbacks/onconversationchangedcallback.md)                   | 某些会话的关键信息发生变化                       |
| [OnFriendApplicationListAddedCallback](../../class/callbacks/onfriendapplicationlistaddedcallback.md)     | 好友请求数量增加的回调                         |
| [OnFriendApplicationListDeletedCallback](../../class/callbacks/onfriendapplicationlistdeletedcallback.md) | 好友请求数量减少的回调                         |
| [OnFriendApplicationListReadCallback](../../class/callbacks/onfriendapplicationlistreadcallback.md)       | 好友请求已读的回调                           |
| [OnFriendInfoChangedCallback](../../class/callbacks/onfriendinfochangedcallback.md)                       | 好友信息改变的回调                           |
| [OnFriendListAddedCallback](../../class/callbacks/onfriendlistaddedcallback.md)                           | 好友列表增加人员的回调                         |
| [OnFriendListDeletedCallback](../../class/callbacks/onfriendlistdeletedcallback.md)                       | 好友列表减少人员的回调                         |
| [OnGrantAdministratorCallback](../../class/callbacks/ongrantadministratorcallback.md)                     | 指定管理员身份                             |
| [OnGroupAttributeChangedCallback](../../class/callbacks/ongroupattributechangedcallback.md)               | 收到群属性更新的回调                          |
| [OnGroupCreatedCallback](../../class/callbacks/ongroupcreatedcallback.md)                                 | 创建群（主要用于多端同步）                       |
| [OnGroupDismissedCallback](../../class/callbacks/ongroupdismissedcallback.md)                             | 群被解散了（全员能收到）                        |
| [OnGroupInfoChangedCallback](../../class/callbacks/ongroupinfochangedcallback.md)                         | 群信息被修改（全员能收到）                       |
| [OnGroupRecycledCallback](../../class/callbacks/ongrouprecycledcallback.md)                               | 群被回收（全员能收到）                         |
| [OnInvitationCancelledCallback](../../class/callbacks/oninvitationcancelledcallback.md)                   | 邀请被取消的回调                            |
| [OnInvitationTimeoutCallback](../../class/callbacks/oninvitationtimeoutcallback.md)                       | 邀请超时的回调                             |
| [OnInviteeAcceptedCallback](../../class/callbacks/oninviteeacceptedcallback.md)                           | 邀请被接受的回调                            |
| [OnInviteeRejectedCallback](../../class/callbacks/oninviteerejectedcallback.md)                           | 邀请被拒绝的回调                            |
| [OnMemberEnterCallback](../../class/callbacks/onmemberentercallback.md)                                   | 有用户加入群（全员能够收到）                      |
| [OnMemberInfoChangedCallback](../../class/callbacks/onmemberinfochangedcallback.md)                       | 群成员信息被修改，仅支持禁言通知（全员能收到）             |
| [OnMemberInvitedCallback](../../class/callbacks/onmemberinvitedcallback.md)                               | 某些人被拉入某群（全员能够收到）                    |
| [OnMemberKickedCallback](../../class/callbacks/onmemberkickedcallback.md)                                 | 某些人被踢出某群（全员能够收到）                    |
| [OnMemberLeaveCallback](../../class/callbacks/onmemberleavecallback.md)                                   | 有用户离开群（全员能够收到）                      |
| [OnNewConversation](../../class/callbacks/onnewconversation.md)                                           | 有新的会话                               |
| [OnQuitFromGroupCallback](../../class/callbacks/onquitfromgroupcallback.md)                               | 主动退出群组（主要用于多端同步，直播群（AVChatRoom）不支持） |
| [OnReceiveJoinApplicationCallback](../../class/callbacks/onreceivejoinapplicationcallback.md)             | 有新的加群请求（只有群主或管理员会收到）                |
| [OnReceiveNewInvitationCallback](../../class/callbacks/onreceivenewinvitationcallback.md)                 | 获取新的邀请的回调                           |
| [OnReceiveRESTCustomDataCallback](../../class/callbacks/onreceiverestcustomdatacallback.md)               | 收到 RESTAPI 下发的自定义系统消息               |
| [OnRecvC2CReadReceiptCallback](../../class/callbacks/onrecvc2creadreceiptcallback.md)                     | C2C 对端用户会话已读通知                      |
| [OnRecvMessageModified](../../class/callbacks/onrecvmessagemodified.md)                                   | 消息内容被修改                             |
| [OnRecvMessageReadReceipts](../../class/callbacks/onrecvmessagereadreceipts.md)                           | 消息已读回执通知                            |
| [OnRecvMessageRevokedCallback](../../class/callbacks/onrecvmessagerevokedcallback.md)                     | 收到消息撤回的通知                           |
| [OnRecvNewMessageCallback](../../class/callbacks/onrecvnewmessagecallback.md)                             | 收到新消息                               |
| [OnRevokeAdministratorCallback](../../class/callbacks/onrevokeadministratorcallback.md)                   | 取消管理员身份                             |
| [OnSendMessageProgressCallback](../../class/callbacks/onsendmessageprogresscallback.md)                   | 文件上传进度回调                            |
| [OnTotalUnreadMessageCountChanged](../../class/callbacks/ontotalunreadmessagecountchanged.md)             | 会话未读总数变更通知                          |
| [OnUserStatusChanged](../../class/callbacks/onuserstatuschanged.md)                                       | 用户状态变更通知                            |
| [V2TimUserFullInfoCallback](../../class/callbacks/v2timuserfullinfocallback.md)                           | 登录用户的资料发生了更新更新                      |
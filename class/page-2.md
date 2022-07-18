---
description: IM API中使用到的回调函数类型
---

# Callbacks

## Callbacks包含内容说明

IM API中使用到的回调函数类型

## 回调函数目录

| 回调函数名称                                                                                        | 说明                                  |
| --------------------------------------------------------------------------------------------- | ----------------------------------- |
| V2TimCallback                                                                                 |                                     |
| ErrorCallback                                                                                 |                                     |
| [OnApplicationProcessedCallback](callbacks/onapplicationprocessedcallback.md)                 | 加群请求已经被群主或管理员处理了（只有申请人能够收到）         |
| [OnBlackListAddCallback](callbacks/onblacklistaddcallback.md)                                 | 黑名单列表新增用户的回调                        |
| [OnBlackListDeletedCallback](callbacks/onblacklistdeletedcallback.md)                         | 黑名单列表删除用户的回调                        |
| OnConversationChangedCallback                                                                 |                                     |
| [OnFriendApplicationListAddedCallback](callbacks/onfriendapplicationlistaddedcallback.md)     | 好友请求数量增加的回调                         |
| [OnFriendApplicationListDeletedCallback](callbacks/onfriendapplicationlistdeletedcallback.md) | 好友请求数量减少的回调                         |
| [OnFriendApplicationListReadCallback](callbacks/onfriendapplicationlistreadcallback.md)       | 好友请求已读的回调                           |
| [OnFriendInfoChangedCallback](callbacks/onfriendinfochangedcallback.md)                       | 好友信息改变的回调                           |
| [OnFriendListAddedCallback](callbacks/onfriendlistaddedcallback.md)                           | 好友列表增加人员的回调                         |
| [OnFriendListDeletedCallback](callbacks/onfriendlistdeletedcallback.md)                       | 好友列表减少人员的回调                         |
| [OnGrantAdministratorCallback](callbacks/ongrantadministratorcallback.md)                     | 指定管理员身份                             |
| [OnGroupAttributeChangedCallback](callbacks/ongroupattributechangedcallback.md)               | 收到群属性更新的回调                          |
| [OnGroupCreatedCallback](callbacks/ongroupcreatedcallback.md)                                 | 创建群（主要用于多端同步）                       |
| [OnGroupDismissedCallback](callbacks/ongroupdismissedcallback.md)                             | 群被解散了（全员能收到）                        |
| [OnGroupInfoChangedCallback](callbacks/ongroupinfochangedcallback.md)                         | 群信息被修改（全员能收到）                       |
| [OnGroupRecycledCallback](callbacks/ongrouprecycledcallback.md)                               | 群被回收（全员能收到）                         |
| [OnInvitationCancelledCallback](callbacks/oninvitationcancelledcallback.md)                   | 邀请被取消的回调                            |
| [OnInvitationTimeoutCallback](callbacks/oninvitationtimeoutcallback.md)                       | 邀请超时的回调                             |
| [OnInviteeAcceptedCallback](callbacks/oninviteeacceptedcallback.md)                           | 邀请被接受的回调                            |
| [OnInviteeRejectedCallback](callbacks/oninviteerejectedcallback.md)                           | 邀请被拒绝的回调                            |
| [OnMemberEnterCallback](callbacks/onmemberentercallback.md)                                   | 有用户加入群（全员能够收到）                      |
| [OnMemberInfoChangedCallback](callbacks/onmemberinfochangedcallback.md)                       | 群成员信息被修改，仅支持禁言通知（全员能收到）             |
| [OnMemberInvitedCallback](callbacks/onmemberinvitedcallback.md)                               | 某些人被拉入某群（全员能够收到）                    |
| [OnMemberKickedCallback](callbacks/onmemberkickedcallback.md)                                 | 某些人被踢出某群（全员能够收到）                    |
| [OnMemberLeaveCallback](callbacks/onmemberleavecallback.md)                                   | 有用户离开群（全员能够收到）                      |
| OnNewConversation                                                                             |                                     |
| [OnQuitFromGroupCallback](callbacks/onquitfromgroupcallback.md)                               | 主动退出群组（主要用于多端同步，直播群（AVChatRoom）不支持） |
| [OnReceiveJoinApplicationCallback](callbacks/onreceivejoinapplicationcallback.md)             | 有新的加群请求（只有群主或管理员会收到）                |
| [OnReceiveNewInvitationCallback](callbacks/onreceivenewinvitationcallback.md)                 | 获取新的邀请的回调                           |
| [OnReceiveRESTCustomDataCallback](callbacks/onreceiverestcustomdatacallback.md)               | 收到 RESTAPI 下发的自定义系统消息               |
| OnRecvC2CCustomMessageCallback                                                                |                                     |
| OnRecvC2CReadReceiptCallback                                                                  |                                     |
| OnRecvC2CTextMessageCallback                                                                  |                                     |
| OnRecvGroupCustomMessageCallback                                                              |                                     |
| OnRecvGroupTextMessageCallback                                                                |                                     |
| OnRecvMessageModified                                                                         |                                     |
| OnRecvMessageReadReceipts                                                                     |                                     |
| OnRecvMessageRevokedCallback                                                                  |                                     |
| OnRecvNewMessageCallback                                                                      |                                     |
| [OnRevokeAdministratorCallback](callbacks/onrevokeadministratorcallback.md)                   | 取消管理员身份                             |
| OnSendMessageProgressCallback                                                                 |                                     |
| OnTotalUnreadMessageCountChanged                                                              |                                     |
| OnUserStatusChanged                                                                           |                                     |
| V2TimUserFullInfoCallback                                                                     |                                     |
| V2TimValueCallback                                                                            |                                     |
| VoidCallback                                                                                  |                                     |

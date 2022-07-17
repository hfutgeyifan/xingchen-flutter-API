---
description: IM API中使用到的回调函数类型
---

# Callbacks

## Callbacks包含内容说明

IM API中使用到的回调函数类型

## 回调函数目录

| 回调函数名称                                                                          | 说明                                  |
| ------------------------------------------------------------------------------- | ----------------------------------- |
| V2TimCallback                                                                   |                                     |
| ErrorCallback                                                                   |                                     |
| [OnApplicationProcessedCallback](callbacks/onapplicationprocessedcallback.md)   | 加群请求已经被群主或管理员处理了（只有申请人能够收到）         |
| OnBlackListAddCallback                                                          |                                     |
| OnBlackListDeletedCallback                                                      |                                     |
| OnConversationChangedCallback                                                   |                                     |
| OnFriendApplicationListAddedCallback                                            |                                     |
| OnFriendApplicationListDeletedCallback                                          |                                     |
| OnFriendApplicationListReadCallback                                             |                                     |
| OnFriendInfoChangedCallback                                                     |                                     |
| OnFriendListAddedCallback                                                       |                                     |
| OnFriendListDeletedCallback                                                     |                                     |
| [OnGrantAdministratorCallback](callbacks/ongrantadministratorcallback.md)       | 指定管理员身份                             |
| [OnGroupAttributeChangedCallback](callbacks/ongroupattributechangedcallback.md) | 收到群属性更新的回调                          |
| [OnGroupCreatedCallback](callbacks/ongroupcreatedcallback.md)                   | 创建群（主要用于多端同步）                       |
| [OnGroupDismissedCallback](callbacks/ongroupdismissedcallback.md)               | 群被解散了（全员能收到）                        |
| [OnGroupInfoChangedCallback](callbacks/ongroupinfochangedcallback.md)           | 群成员信息被修改，仅支持禁言通知（全员能收到）。            |
| [OnGroupRecycledCallback](callbacks/ongrouprecycledcallback.md)                 | 群被回收（全员能收到）                         |
| OnInvitationCancelledCallback                                                   |                                     |
| OnInvitationTimeoutCallback                                                     |                                     |
| OnInviteeAcceptedCallback                                                       |                                     |
| OnInviteeRejectedCallback                                                       |                                     |
| OnMemberEnterCallback                                                           | 有用户加入群（全员能够收到）                      |
| OnMemberInfoChangedCallback                                                     |                                     |
| OnMemberInvitedCallback                                                         | 某些人被拉入某群（全员能够收到）                    |
| OnMemberKickedCallback                                                          | 某些人被踢出某群（全员能够收到）                    |
| OnMemberLeaveCallback                                                           | 有用户离开群（全员能够收到）                      |
| OnNewConversation                                                               |                                     |
| OnQuitFromGroupCallback                                                         | 主动退出群组（主要用于多端同步，直播群（AVChatRoom）不支持） |
| OnReceiveJoinApplicationCallback                                                | 有新的加群请求（只有群主或管理员会收到）                |
| OnReceiveNewInvitationCallback                                                  |                                     |
| OnReceiveRESTCustomDataCallback                                                 | 收到 RESTAPI 下发的自定义系统消息               |
| OnRecvC2CCustomMessageCallback                                                  |                                     |
| OnRecvC2CReadReceiptCallback                                                    |                                     |
| OnRecvC2CTextMessageCallback                                                    |                                     |
| OnRecvGroupCustomMessageCallback                                                |                                     |
| OnRecvGroupTextMessageCallback                                                  |                                     |
| OnRecvMessageModified                                                           |                                     |
| OnRecvMessageReadReceipts                                                       |                                     |
| OnRecvMessageRevokedCallback                                                    |                                     |
| OnRecvNewMessageCallback                                                        |                                     |
| OnRevokeAdministratorCallback                                                   | 取消管理员身份                             |
| OnSendMessageProgressCallback                                                   |                                     |
| OnTotalUnreadMessageCountChanged                                                |                                     |
| OnUserStatusChanged                                                             |                                     |
| V2TimUserFullInfoCallback                                                       |                                     |
| V2TimValueCallback                                                              |                                     |
| VoidCallback                                                                    |                                     |

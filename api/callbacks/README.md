---
description: IM API中使用到的回调函数类型
---

# Callbacks

## Callbacks包含内容说明

IM API中使用到的回调函数类型

## 回调函数目录

| 回调函数名称                                                     | 说明                                  |
| ---------------------------------------------------------- | ----------------------------------- |
| [VoidCallback](voidcallback.md)                            | 无返回参数的回调函数                          |
| [ErrorCallback](broken-reference)                          | 请求失败的回调函数                           |
| [OnApplicationProcessedCallback](broken-reference)         | 加群请求已经被群主或管理员处理了（只有申请人能够收到）         |
| [OnBlackListAddCallback](onblacklistaddcallback.md)        | 黑名单列表新增用户的回调                        |
| [OnBlackListDeletedCallback](broken-reference)             | 黑名单列表删除用户的回调                        |
| [OnConversationChangedCallback](broken-reference)          | 某些会话的关键信息发生变化                       |
| [OnFriendApplicationListAddedCallback](broken-reference)   | 好友请求数量增加的回调                         |
| [OnFriendApplicationListDeletedCallback](broken-reference) | 好友请求数量减少的回调                         |
| [OnFriendApplicationListReadCallback](broken-reference)    | 好友请求已读的回调                           |
| [OnFriendInfoChangedCallback](broken-reference)            | 好友信息改变的回调                           |
| [OnFriendListAddedCallback](broken-reference)              | 好友列表增加人员的回调                         |
| [OnFriendListDeletedCallback](broken-reference)            | 好友列表减少人员的回调                         |
| [OnGrantAdministratorCallback](broken-reference)           | 指定管理员身份                             |
| [OnGroupAttributeChangedCallback](broken-reference)        | 收到群属性更新的回调                          |
| [OnGroupCreatedCallback](broken-reference)                 | 创建群（主要用于多端同步）                       |
| [OnGroupDismissedCallback](broken-reference)               | 群被解散了（全员能收到）                        |
| [OnGroupInfoChangedCallback](broken-reference)             | 群信息被修改（全员能收到）                       |
| [OnGroupRecycledCallback](broken-reference)                | 群被回收（全员能收到）                         |
| [OnInvitationCancelledCallback](broken-reference)          | 邀请被取消的回调                            |
| [OnInvitationTimeoutCallback](broken-reference)            | 邀请超时的回调                             |
| [OnInviteeAcceptedCallback](broken-reference)              | 邀请被接受的回调                            |
| [OnInviteeRejectedCallback](broken-reference)              | 邀请被拒绝的回调                            |
| [OnMemberEnterCallback](broken-reference)                  | 有用户加入群（全员能够收到）                      |
| [OnMemberInfoChangedCallback](broken-reference)            | 群成员信息被修改，仅支持禁言通知（全员能收到）             |
| [OnMemberInvitedCallback](broken-reference)                | 某些人被拉入某群（全员能够收到）                    |
| [OnMemberKickedCallback](broken-reference)                 | 某些人被踢出某群（全员能够收到）                    |
| [OnMemberLeaveCallback](broken-reference)                  | 有用户离开群（全员能够收到）                      |
| [OnNewConversation](broken-reference)                      | 有新的会话                               |
| [OnQuitFromGroupCallback](broken-reference)                | 主动退出群组（主要用于多端同步，直播群（AVChatRoom）不支持） |
| [OnReceiveJoinApplicationCallback](broken-reference)       | 有新的加群请求（只有群主或管理员会收到）                |
| [OnReceiveNewInvitationCallback](broken-reference)         | 获取新的邀请的回调                           |
| [OnReceiveRESTCustomDataCallback](broken-reference)        | 收到 RESTAPI 下发的自定义系统消息               |
| [OnRecvC2CReadReceiptCallback](broken-reference)           | C2C 对端用户会话已读通知                      |
| [OnRecvMessageModified](broken-reference)                  | 消息内容被修改                             |
| [OnRecvMessageReadReceipts](broken-reference)              | 消息已读回执通知                            |
| [OnRecvMessageRevokedCallback](broken-reference)           | 收到消息撤回的通知                           |
| [OnRecvNewMessageCallback](broken-reference)               | 收到新消息                               |
| [OnRevokeAdministratorCallback](broken-reference)          | 取消管理员身份                             |
| [OnSendMessageProgressCallback](broken-reference)          | 文件上传进度回调                            |
| [OnTotalUnreadMessageCountChanged](broken-reference)       | 会话未读总数变更通知                          |
| [OnUserStatusChanged](broken-reference)                    | 用户状态变更通知                            |
| [V2TimUserFullInfoCallback](broken-reference)              | 登录用户的资料发生了更新更新                      |

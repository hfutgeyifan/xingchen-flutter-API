---
description: 提供高级消息处理相关接口
---

# V2TIMMessageManager

## V2TIMMessageManager功能介绍

提供高级消息处理相关接口

## API目录

| API                                                                         | 描述                                                    |
| --------------------------------------------------------------------------- | ----------------------------------------------------- |
| [addAdvancedMsgListener](addadvancedmsglistener.md)                         | 添加高级消息的事件监听器                                          |
| [removeAdvancedMsgListener](removeadvancedmsglistener.md)                   | 移除高级消息监听器                                             |
| [createTextMessage](createtextmessage.md)                                   | 创建文本消息                                                |
| [createTextAtMessage](createtextatmessage.md)                               | 创建文本消息，并且可以附带 @ 提醒功能（最大支持 8KB） 提醒消息仅适用于在群组中发送的消息      |
| [createCustomMessage](createcustommessage.md)                               | 创建定制化消息                                               |
| [createImageMessage](createimagemessage.md)                                 | 创建图片消息（图片文件最大支持 28 MB）                                |
| [createSoundMessage](createsoundmessage.md)                                 | 创建音频消息                                                |
| [createVideoMessage](createvideomessage.md)                                 | 创建视频文件                                                |
| [createFileMessage](createfilemessage.md)                                   | 创建文件消息                                                |
| [createLocationMessage](createlocationmessage.md)                           | 创建位置信息                                                |
| [createFaceMessage](createfacemessage.md)                                   | 创建表情消息                                                |
| [createMergerMessage](createmergermessage.md)                               | 创建合并消息                                                |
| [downloadMergerMessage](downloadmergermessage.md)                           | 获取合并消息的子消息列表（下载被合并的消息列表）                              |
| [createForwardMessage](createforwardmessage.md)                             | 创建转发消息                                                |
| [createTargetedGroupMessage](createtargetedgroupmessage.md)                 | 创建一条定向群消息，定向群消息只有指定群成员才能收到。                           |
| [sendMessage](sendmessage.md)                                               | 发送消息                                                  |
| [setC2CReceiveMessageOpt](setc2creceivemessageopt.md)                       | 设置用户消息接收选项                                            |
| [getC2CReceiveMessageOpt](getc2creceivemessageopt.md)                       | 查询某个用户的 C2C 消息接收选项                                    |
| [setGroupReceiveMessageOpt](setgroupreceivemessageopt.md)                   | 修改群消息接收选项                                             |
| [getC2CHistoryMessageList](getc2chistorymessagelist.md)                     | 获取单聊历史消息                                              |
| [getGroupHistoryMessageList](getgrouphistorymessagelist.md)                 | 获取群组历史消息                                              |
| [getHistoryMessageList](gethistorymessagelist.md)                           | 获取历史消息高级接口                                            |
| [appendMessage](appendmessage.md)                                           | 添加多Element消息                                          |
| [reSendMessage](resendmessage.md)                                           | 消息重发                                                  |
| [sendReplyMessage](sendreplymessage.md)                                     | 发送回复消息                                                |
| [revokeMessage](revokemessage.md)                                           | 撤回消息                                                  |
| [modifyMessage](modifymessage.md)                                           | 消息变更 4.0.1及以后版本支持                                     |
| [markC2CMessageAsRead](markc2cmessageasread.md)                             | 设置单聊消息已读                                              |
| [markGroupMessageAsRead](markgroupmessageasread.md)                         | 设置群组消息已读                                              |
| [markAllMessageAsRead](markallmessageasread.md)                             | 标记所有消息为已读                                             |
| [deleteMessageFromLocalStorage](deletemessagefromlocalstorage.md)           | 删除本地消息                                                |
| [deleteMessages](deletemessages.md)                                         | 删除本地及漫游消息                                             |
| [clearC2CHistoryMessage](clearc2chistorymessage.md)                         | 清空单聊本地及云端的消息（不删除会话）                                   |
| [clearGroupHistoryMessage](cleargrouphistorymessage.md)                     | 清空群聊本地及云端的消息（不删除会话）                                   |
| [insertC2CMessageToLocalStorage](insertc2cmessagetolocalstorage.md)         | 向C2C消息列表中添加一条消息                                       |
| [insertGroupMessageToLocalStorage](insertgroupmessagetolocalstorage.md)     | 向群组消息列表中添加一条消息                                        |
| [searchLocalMessages](searchlocalmessages.md)                               | 搜索本地消息                                                |
| [sendMessageReadReceipts](sendmessagereadreceipts.md)                       | 发送消息已读回执                                              |
| [getMessageReadReceipts](getmessagereadreceipts.md)                         | 获取消息已读回执                                              |
| [getGroupMessageReadMemberList](getgroupmessagereadmemberlist.md)           | 获取群消息已读群成员列表                                          |
| [setLocalCustomData](setlocalcustomdata.md)                                 | 设置消息自定义数据（本地保存，不会发送到对端，程序卸载重装后失效）                     |
| [setLocalCustomInt](setlocalcustomint.md)                                   | 设置消息自定义数据，可以用来标记语音、视频消息是否已经播放（本地保存，不会发送到对端，程序卸载重装后失效） |

---
description: 提供高级消息处理相关接口
---

# Copy of V2TIMMessageManager

## V2TIMMessageManager功能介绍

提供高级消息处理相关接口

## API目录

| API                                                                                                | 描述                                                    |
| -------------------------------------------------------------------------------------------------- | ----------------------------------------------------- |
| [addAdvancedMsgListener](../v2timmessagemanager/addadvancedmsglistener.md)                         | 添加高级消息的事件监听器                                          |
| [appendMessage](../v2timmessagemanager/appendmessage.md)                                           | 添加多Element消息                                          |
| [clearC2CHistoryMessage](../v2timmessagemanager/clearc2chistorymessage.md)                         | 清空单聊本地及云端的消息（不删除会话）                                   |
| [clearGroupHistoryMessage](../v2timmessagemanager/cleargrouphistorymessage.md)                     | 清空群聊本地及云端的消息（不删除会话）                                   |
| [createCustomMessage](../v2timmessagemanager/createcustommessage.md)                               | 创建定制化消息                                               |
| [createFaceMessage](../v2timmessagemanager/createfacemessage.md)                                   | 创建表情消息                                                |
| [createFileMessage](../v2timmessagemanager/createfilemessage.md)                                   | 创建文件消息                                                |
| [createForwardMessage](../v2timmessagemanager/createforwardmessage.md)                             | 创建转发消息                                                |
| [createImageMessage](../v2timmessagemanager/createimagemessage.md)                                 | 创建图片消息（图片文件最大支持 28 MB）                                |
| [createLocationMessage](../v2timmessagemanager/createlocationmessage.md)                           | 创建位置信息                                                |
| [createMergerMessage](../v2timmessagemanager/createmergermessage.md)                               | 创建合并消息                                                |
| [createSoundMessage](../v2timmessagemanager/createsoundmessage.md)                                 | 创建音频消息                                                |
| [createTargetedGroupMessage](../v2timmessagemanager/createtargetedgroupmessage.md)                 | 创建一条定向群消息，定向群消息只有指定群成员才能收到。                           |
| [createTextAtMessage](../v2timmessagemanager/createtextatmessage.md)                               | 创建文本消息，并且可以附带 @ 提醒功能（最大支持 8KB） 提醒消息仅适用于在群组中发送的消息      |
| [createTextMessage](../v2timmessagemanager/createtextmessage.md)                                   | 创建文本消息                                                |
| [createVideoMessage](../v2timmessagemanager/createvideomessage.md)                                 | 创建视频文件                                                |
| [deleteMessageFromLocalStorage](../v2timmessagemanager/deletemessagefromlocalstorage.md)           | 删除本地消息                                                |
| [deleteMessages](../v2timmessagemanager/deletemessages.md)                                         | 删除本地及漫游消息                                             |
| [downloadMergerMessage](../v2timmessagemanager/downloadmergermessage.md)                           | 获取合并消息的子消息列表（下载被合并的消息列表）                              |
| [findMessages](../v2timmessagemanager/findmessages.md)                                             | 根据 messageID 查询指定会话中的本地消息                             |
| [getC2CHistoryMessageList](../v2timmessagemanager/getc2chistorymessagelist.md)                     | 获取单聊历史消息                                              |
| [getC2CReceiveMessageOpt](../v2timmessagemanager/getc2creceivemessageopt.md)                       | 查询某个用户的 C2C 消息接收选项                                    |
| [getGroupHistoryMessageList](../v2timmessagemanager/getgrouphistorymessagelist.md)                 | 获取群组历史消息                                              |
| [getGroupMessageReadMemberList](../v2timmessagemanager/getgroupmessagereadmemberlist.md)           | 获取群消息已读群成员列表                                          |
| [getHistoryMessageList](../v2timmessagemanager/gethistorymessagelist.md)                           | 获取历史消息高级接口                                            |
| [getHistoryMessageListWithoutFormat](../v2timmessagemanager/gethistorymessagelistwithoutformat.md) | 获取历史消息高级接口(没有处理Native返回数据)                            |
| [getMessageReadReceipts](../v2timmessagemanager/getmessagereadreceipts.md)                         | 获取消息已读回执                                              |
| [insertC2CMessageToLocalStorage](../v2timmessagemanager/insertc2cmessagetolocalstorage.md)         | 向C2C消息列表中添加一条消息                                       |
| [insertGroupMessageToLocalStorage](../v2timmessagemanager/insertgroupmessagetolocalstorage.md)     | 向群组消息列表中添加一条消息                                        |
| [markAllMessageAsRead](../v2timmessagemanager/markallmessageasread.md)                             | 标记所有消息为已读                                             |
| [markC2CMessageAsRead](../v2timmessagemanager/markc2cmessageasread.md)                             | 设置单聊消息已读                                              |
| [markGroupMessageAsRead](../v2timmessagemanager/markgroupmessageasread.md)                         | 设置群组消息已读                                              |
| [modifyMessage](../v2timmessagemanager/modifymessage.md)                                           | 消息变更 4.0.1及以后版本支持                                     |
| [removeAdvancedMsgListener](../v2timmessagemanager/removeadvancedmsglistener.md)                   | 移除高级消息监听器                                             |
| [reSendMessage](../v2timmessagemanager/resendmessage.md)                                           | 消息重发                                                  |
| [revokeMessage](../v2timmessagemanager/revokemessage.md)                                           | 撤回消息                                                  |
| [searchLocalMessages](../v2timmessagemanager/searchlocalmessages.md)                               | 搜索本地消息                                                |
| [sendMessage](../v2timmessagemanager/sendmessage.md)                                               | 发送消息                                                  |
| [sendMessageReadReceipts](../v2timmessagemanager/sendmessagereadreceipts.md)                       | 发送消息已读回执                                              |
| [sendReplyMessage](../v2timmessagemanager/sendreplymessage.md)                                     | 发送回复消息                                                |
| [setC2CReceiveMessageOpt](../v2timmessagemanager/setc2creceivemessageopt.md)                       | 设置用户消息接收选项                                            |
| [setGroupReceiveMessageOpt](../v2timmessagemanager/setgroupreceivemessageopt.md)                   | 修改群消息接收选项                                             |
| [setLocalCustomData](../v2timmessagemanager/setlocalcustomdata.md)                                 | 设置消息自定义数据（本地保存，不会发送到对端，程序卸载重装后失效）                     |
| [setLocalCustomInt](../v2timmessagemanager/setlocalcustomint.md)                                   | 设置消息自定义数据，可以用来标记语音、视频消息是否已经播放（本地保存，不会发送到对端，程序卸载重装后失效） |

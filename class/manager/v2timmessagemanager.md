---
description: 提供高级消息处理相关接口
---

# V2TIMMessageManager

## V2TIMMessageManager功能介绍

提供高级消息处理相关接口

## API目录

| API                                                                                                   | 描述                                                    |
| ----------------------------------------------------------------------------------------------------- | ----------------------------------------------------- |
| [addAdvancedMsgListener](../../api/v2timmessagemanager/addadvancedmsglistener.md)                     | 添加高级消息的事件监听器                                          |
| appendMessage                                                                                         | 添加多Element消息                                          |
| [clearC2CHistoryMessage](../../api/v2timmessagemanager/clearc2chistorymessage.md)                     | 清空单聊本地及云端的消息（不删除会话）                                   |
| [clearGroupHistoryMessage](../../api/v2timmessagemanager/cleargrouphistorymessage.md)                 | 清空群聊本地及云端的消息（不删除会话）                                   |
| [createCustomMessage](../../api/v2timmessagemanager/createcustommessage.md)                           | 创建定制化消息                                               |
| [createFaceMessage](../../api/v2timmessagemanager/createfacemessage.md)                               | 创建表情消息                                                |
| [createFileMessage](../../api/v2timmessagemanager/createfilemessage.md)                               | 创建文件消息                                                |
| [createForwardMessage](../../api/v2timmessagemanager/createforwardmessage.md)                         | 创建转发消息                                                |
| [createImageMessage](../../api/v2timmessagemanager/createimagemessage.md)                             | 创建图片消息（图片文件最大支持 28 MB）                                |
| [createLocationMessage](../../api/v2timmessagemanager/createlocationmessage.md)                       | 创建位置信息                                                |
| [createMergerMessage](../../api/v2timmessagemanager/createmergermessage.md)                           | 创建合并消息                                                |
| [createSoundMessage](../../api/v2timmessagemanager/createsoundmessage.md)                             | 创建音频消息                                                |
| [createTargetedGroupMessage](../../api/v2timmessagemanager/createtargetedgroupmessage.md)             | 创建一条定向群消息，定向群消息只有指定群成员才能收到。                           |
| [createTextAtMessage](../../api/v2timmessagemanager/createtextatmessage.md)                           | 创建文本消息，并且可以附带 @ 提醒功能（最大支持 8KB） 提醒消息仅适用于在群组中发送的消息      |
| [createTextMessage](../../api/v2timmessagemanager/createtextmessage.md)                               | 创建文本消息                                                |
| [createVideoMessage](../../api/v2timmessagemanager/createvideomessage.md)                             | 创建视频文件                                                |
| [deleteMessageFromLocalStorage](../../api/v2timmessagemanager/deletemessagefromlocalstorage.md)       | 删除本地消息                                                |
| [deleteMessages](../../api/v2timmessagemanager/deletemessages.md)                                     | 删除本地及漫游消息                                             |
| downloadMergerMessage                                                                                 | 获取合并消息的子消息列表（下载被合并的消息列表）                              |
| [findMessages](../../api/v2timmessagemanager/findmessages.md)                                         | 根据 messageID 查询指定会话中的本地消息                             |
| [getC2CHistoryMessageList](../../api/v2timmessagemanager/getc2chistorymessagelist.md)                 | 获取单聊历史消息                                              |
| [getC2CReceiveMessageOpt](../../api/v2timmessagemanager/getc2creceivemessageopt.md)                   | 查询某个用户的 C2C 消息接收选项                                    |
| [getGroupHistoryMessageList](../../api/v2timmessagemanager/getgrouphistorymessagelist.md)             | 获取群组历史消息                                              |
| [getGroupMessageReadMemberList](../../api/v2timmessagemanager/getgroupmessagereadmemberlist.md)       | 获取群消息已读群成员列表                                          |
| [getHistoryMessageList](../../api/v2timmessagemanager/gethistorymessagelist.md)                       | 获取历史消息高级接口                                            |
| getHistoryMessageListWithoutFormat                                                                    | 获取历史消息高级接口(没有处理Native返回数据)                            |
| [getMessageReadReceipts](../../api/v2timmessagemanager/getmessagereadreceipts.md)                     | 获取消息已读回执                                              |
| initGroupAttributes                                                                                   | 修改群消息接收选项                                             |
| [insertC2CMessageToLocalStorage](../../api/v2timmessagemanager/insertc2cmessagetolocalstorage.md)     | 向C2C消息列表中添加一条消息                                       |
| [insertGroupMessageToLocalStorage](../../api/v2timmessagemanager/insertgroupmessagetolocalstorage.md) | 向群组消息列表中添加一条消息                                        |
| markAllMessageAsRead                                                                                  | 标记所有消息为已读                                             |
| markC2CMessageAsRead                                                                                  | 设置单聊消息已读                                              |
| markGroupMessageAsRead                                                                                | 设置群组消息已读                                              |
| [modifyMessage](../../api/v2timmessagemanager/modifymessage.md)                                       | 消息变更 4.0.1及以后版本支持                                     |
| removeAdvancedMsgListener                                                                             | 移除高级消息监听器                                             |
| reSendMessage                                                                                         | 消息重发                                                  |
| [revokeMessage](../../api/v2timmessagemanager/revokemessage.md)                                       | 撤回消息                                                  |
| searchLocalMessages                                                                                   | 搜索本地消息                                                |
| [sendMessage](../../api/v2timmessagemanager/sendmessage.md)                                           | 发送消息                                                  |
| [sendMessageReadReceipts](../../api/v2timmessagemanager/sendmessagereadreceipts.md)                   | 发送消息已读回执                                              |
| sendReplyMessage                                                                                      | 发送回复消息                                                |
| [setC2CReceiveMessageOpt](../../api/v2timmessagemanager/setc2creceivemessageopt.md)                   | 设置用户消息接收选项                                            |
| [setGroupReceiveMessageOpt](../../api/v2timmessagemanager/setgroupreceivemessageopt.md)               | 修改群消息接收选项                                             |
| [setLocalCustomData](../../api/v2timmessagemanager/setlocalcustomdata.md)                             | 设置消息自定义数据（本地保存，不会发送到对端，程序卸载重装后失效）                     |
| [setLocalCustomInt](../../api/v2timmessagemanager/setlocalcustomint.md)                               | 设置消息自定义数据，可以用来标记语音、视频消息是否已经播放（本地保存，不会发送到对端，程序卸载重装后失效） |

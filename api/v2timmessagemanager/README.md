---
description: 提供高级消息处理相关接口
---

# Copy of V2TIMMessageManager

## V2TIMMessageManager功能介绍

提供高级消息处理相关接口

## API目录

| API                                                    | 描述                                                    |
| ------------------------------------------------------ | ----------------------------------------------------- |
| [addAdvancedMsgListener](broken-reference)             | 添加高级消息的事件监听器                                          |
| [appendMessage](broken-reference)                      | 添加多Element消息                                          |
| [clearC2CHistoryMessage](broken-reference)             | 清空单聊本地及云端的消息（不删除会话）                                   |
| [clearGroupHistoryMessage](broken-reference)           | 清空群聊本地及云端的消息（不删除会话）                                   |
| [createCustomMessage](broken-reference)                | 创建定制化消息                                               |
| [createFaceMessage](broken-reference)                  | 创建表情消息                                                |
| [createFileMessage](broken-reference)                  | 创建文件消息                                                |
| [createForwardMessage](broken-reference)               | 创建转发消息                                                |
| [createImageMessage](broken-reference)                 | 创建图片消息（图片文件最大支持 28 MB）                                |
| [createLocationMessage](broken-reference)              | 创建位置信息                                                |
| [createMergerMessage](broken-reference)                | 创建合并消息                                                |
| [createSoundMessage](broken-reference)                 | 创建音频消息                                                |
| [createTargetedGroupMessage](broken-reference)         | 创建一条定向群消息，定向群消息只有指定群成员才能收到。                           |
| [createTextAtMessage](broken-reference)                | 创建文本消息，并且可以附带 @ 提醒功能（最大支持 8KB） 提醒消息仅适用于在群组中发送的消息      |
| [createTextMessage](broken-reference)                  | 创建文本消息                                                |
| [createVideoMessage](broken-reference)                 | 创建视频文件                                                |
| [deleteMessageFromLocalStorage](broken-reference)      | 删除本地消息                                                |
| [deleteMessages](broken-reference)                     | 删除本地及漫游消息                                             |
| [downloadMergerMessage](broken-reference)              | 获取合并消息的子消息列表（下载被合并的消息列表）                              |
| [findMessages](broken-reference)                       | 根据 messageID 查询指定会话中的本地消息                             |
| [getC2CHistoryMessageList](broken-reference)           | 获取单聊历史消息                                              |
| [getC2CReceiveMessageOpt](broken-reference)            | 查询某个用户的 C2C 消息接收选项                                    |
| [getGroupHistoryMessageList](broken-reference)         | 获取群组历史消息                                              |
| [getGroupMessageReadMemberList](broken-reference)      | 获取群消息已读群成员列表                                          |
| [getHistoryMessageList](broken-reference)              | 获取历史消息高级接口                                            |
| [getHistoryMessageListWithoutFormat](broken-reference) | 获取历史消息高级接口(没有处理Native返回数据)                            |
| [getMessageReadReceipts](broken-reference)             | 获取消息已读回执                                              |
| [insertC2CMessageToLocalStorage](broken-reference)     | 向C2C消息列表中添加一条消息                                       |
| [insertGroupMessageToLocalStorage](broken-reference)   | 向群组消息列表中添加一条消息                                        |
| [markAllMessageAsRead](broken-reference)               | 标记所有消息为已读                                             |
| [markC2CMessageAsRead](broken-reference)               | 设置单聊消息已读                                              |
| [markGroupMessageAsRead](broken-reference)             | 设置群组消息已读                                              |
| [modifyMessage](broken-reference)                      | 消息变更 4.0.1及以后版本支持                                     |
| [removeAdvancedMsgListener](broken-reference)          | 移除高级消息监听器                                             |
| [reSendMessage](broken-reference)                      | 消息重发                                                  |
| [revokeMessage](broken-reference)                      | 撤回消息                                                  |
| [searchLocalMessages](broken-reference)                | 搜索本地消息                                                |
| [sendMessage](broken-reference)                        | 发送消息                                                  |
| [sendMessageReadReceipts](broken-reference)            | 发送消息已读回执                                              |
| [sendReplyMessage](broken-reference)                   | 发送回复消息                                                |
| [setC2CReceiveMessageOpt](broken-reference)            | 设置用户消息接收选项                                            |
| [setGroupReceiveMessageOpt](broken-reference)          | 修改群消息接收选项                                             |
| [setLocalCustomData](broken-reference)                 | 设置消息自定义数据（本地保存，不会发送到对端，程序卸载重装后失效）                     |
| [setLocalCustomInt](broken-reference)                  | 设置消息自定义数据，可以用来标记语音、视频消息是否已经播放（本地保存，不会发送到对端，程序卸载重装后失效） |

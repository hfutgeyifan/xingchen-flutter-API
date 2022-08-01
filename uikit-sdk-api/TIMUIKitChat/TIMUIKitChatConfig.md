---
description: 消息页面设置
---

# TIMUIKitChatConfig

## 关键类描述

消息页面设置

## 参数

### isShowReadingStatus

* 参数类型 : bool
* 参数描述 : 是否展示消息的阅读状态

### isShowGroupReadingStatus

* 参数类型 : bool
* 参数描述 : 是否展示群组消息的阅读状态

### isAllowLongPressMessage

* 参数类型 : bool
* 参数描述 : 是否允许使用长按消息出现消息操作功能

### isAllowClickAvatar

* 参数类型 : bool
* 参数描述 : 是否允许使用点击头像的回调函数

### isAllowEmojiPanel

* 参数类型 : bool
* 参数描述 : 是否允许使用表情面板

### isAllowShowMorePanel

* 参数类型 : bool
* 参数描述 : 是否允许使用更多操作面板

### isAllowSoundMessage

* 参数类型 : bool
* 参数描述 : 是否允许发送语音消息

### isAtWhenReply

* 参数类型 : bool
* 参数描述 : 是否允许引用消息时自动@消息发出者

### isShowGroupMessageReadReceipt

* 参数类型 : bool
* 参数描述 : 是否展示群消息已读回执

### groupReadReceiptPermisionList

* 参数类型 : List< [GroupReceptAllowType](GroupReceptAllowType.md) >
* 参数描述 : 限定可展示群消息已读回执的群类型

### notificationTitle

* 参数类型 : String
* 参数描述 : 此会话的离线推送标题

### notificationOPPOChannelID

* 参数类型 : String
* 参数描述 : oppo系列手机的离线推送渠道id

### isShowSelfNameInGroup

* 参数类型 : bool
* 参数描述 : 是否在群组聊天中展示自己的名字

### isShowOthersNameInGroup

* 参数类型 : bool
* 参数描述 : 是否在群组聊天中展示其他人的名字

### notificationIOSSound

* 参数类型 : String
* 参数描述 : ios的离线推送的铃声文件路径

### notificationBody

* 参数类型 : String Function([V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, String convID, [ConvType](ConvType.md) convType)
* 参数描述 : 离线推送消息样式构造器

### notificationExt

* 参数类型 : String Function([V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, String convID, [ConvType](ConvType.md) convType)
* 参数描述 : 离线推送消息的额外信息

### urlPreviewType

* 参数类型 : [UrlPreviewType](UrlPreviewType.md)
* 参数描述 : url信息预览类型

### showC2cMessageEditStaus

* 参数类型 : bool
* 参数描述 : 是否展示正在输入中的状态

### isUseMessageReaction

* 参数类型 : bool
* 参数描述 : 是否允许使用表情回复回应功能

###

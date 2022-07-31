---
description: 用于自定义不同种类消息样式的构造器
---

# MessageItemBuilder

## 关键类描述

用于自定义不同种类消息样式的构造器

## 参数

### textMessageItemBuilder

* 参数类型 : Widget? Function( [V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, bool isShowJump, [VoidCallback](../../api/callbacks/voidcallback.md) clearJump)
* 参数描述 : 文本消息的样式构造器

### textReplyMessageItemBuilder

* 参数类型 : Widget? Function( [V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, bool isShowJump, [VoidCallback](../../api/callbacks/voidcallback.md) clearJump)
* 参数描述 : 文本回复消息的样式构造器

### customMessageItemBuilder

* 参数类型 : Widget? Function( [V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, bool isShowJump, [VoidCallback](../../api/callbacks/voidcallback.md) clearJump)
* 参数描述 : 自定义消息的样式构造器

### imageMessageItemBuilder

* 参数类型 : Widget? Function( [V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, bool isShowJump, [VoidCallback](../../api/callbacks/voidcallback.md) clearJump)
* 参数描述 : 图片消息的样式构造器

### soundMessageItemBuilder

* 参数类型 : Widget? Function( [V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, bool isShowJump, [VoidCallback](../../api/callbacks/voidcallback.md) clearJump)
* 参数描述 : 语音消息的样式构造器

### videoMessageItemBuilder

* 参数类型 : Widget? Function( [V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, bool isShowJump, [VoidCallback](../../api/callbacks/voidcallback.md) clearJump)
* 参数描述 : 视频消息的样式构造器

### fileMessageItemBuilder

* 参数类型 : Widget? Function( [V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, bool isShowJump, [VoidCallback](../../api/callbacks/voidcallback.md) clearJump)
* 参数描述 : 文件消息的样式构造器

### locationMessageItemBuilder

* 参数类型 : Widget? Function( [V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, bool isShowJump, [VoidCallback](../../api/callbacks/voidcallback.md) clearJump)
* 参数描述 : 地理位置消息的样式构造器

### faceMessageItemBuilder

* 参数类型 : Widget? Function( [V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, bool isShowJump, [VoidCallback](../../api/callbacks/voidcallback.md) clearJump)
* 参数描述 : 表情消息的样式构造器

### groupTipsMessageItemBuilder

* 参数类型 : Widget? Function( [V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, bool isShowJump, [VoidCallback](../../api/callbacks/voidcallback.md) clearJump)
* 参数描述 : 群 tips 消息的样式构造器

### mergerMessageItemBuilder

* 参数类型 : Widget? Function( [V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, bool isShowJump, [VoidCallback](../../api/callbacks/voidcallback.md) clearJump)
* 参数描述 : 合并消息的样式构造器

### groupTRTCTipsItemBuilder

* 参数类型 : Widget? Function( [V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, bool isShowJump, [VoidCallback](../../api/callbacks/voidcallback.md) clearJump)
* 参数描述 : 群组通话消息的样式构造器

### messageRowBuilder

* 参数类型 : Widget Function([V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, Widget messageWidget, Function onScrollToIndex, bool isNeedShowJumpStatus, [VoidCallback](../../api/callbacks/voidcallback.md) clearJumpStatus, Function onScrollToIndexBegin)
* 参数描述 : 自定义整个消息样式的构造器

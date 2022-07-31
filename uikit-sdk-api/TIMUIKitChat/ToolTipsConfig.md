---
description: 长按消息显示的消息操作选项设置
---

# ToolTipsConfig

## 关键类描述

长按消息显示的消息操作选项设置

## 参数

### showReplyMessage

* 参数类型 : bool
* 参数描述 : 是否展示默认的引用消息操作

### showMultipleChoiceMessage

* 参数类型 : bool
* 参数描述 : 是否展示默认的多选消息操作

### showDeleteMessage

* 参数类型 : bool
* 参数描述 : 是否展示默认的删除消息操作

### showRecallMessage

* 参数类型 : bool
* 参数描述 : 是否展示默认的撤回消息操作

### showCopyMessage

* 参数类型 : bool
* 参数描述 : 是否展示默认的复制消息操作

### showForwardMessage

* 参数类型 : bool
* 参数描述 : 是否展示默认的转发消息操作

### additionalItemBuilder

* 参数类型 : Widget? Function([V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, Function() closeTooltip, \[Key? key])
* 参数描述 : 自定义操作模块构造器

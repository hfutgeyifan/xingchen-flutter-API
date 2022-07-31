---
description: 聊天组件
---

# TIMUIKitChat

## 组件介绍及使用场景 <a href="#he-shi-shi-yong" id="he-shi-shi-yong"></a>

组件介绍：聊天组件。

使用场景：构造聊天页面时使用。

## 参数列表

| 参数                          | 说明 | 类型                                                                                                                                                                         | 是否必填 |
| --------------------------- | -- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---- |
| conversationID              |    | String                                                                                                                                                                     |      |
| conversationType            |    | int                                                                                                                                                                        |      |
| conversationShowName        |    | String                                                                                                                                                                     |      |
| onTapAvatar                 |    | void Function(String userID)                                                                                                                                               |      |
| messageItemBuilder          |    | [MessageItemBuilder](MessageItemBuilder.md)                                                                                                                                |      |
| showTotalUnReadCount        |    | bool                                                                                                                                                                       |      |
| exteraTipsActionItemBuilder |    | Widget? Function([V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, Function() closeTooltip, \[Key? key])                                            |      |
| extraTipsActionItemBuilder  |    | Widget? Function([V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, Function() closeTooltip, \[Key? key])                                            |      |
| draftText                   |    | String                                                                                                                                                                     | 否    |
| initFindingMsg              |    | [V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md)                                                                                                            |      |
| textFieldHintText           |    | String                                                                                                                                                                     |      |
| appBarConfig                |    | AppBar                                                                                                                                                                     |      |
| mainHistoryListConfig       |    | ListView                                                                                                                                                                   |      |
| morePanelConfig             |    | [MorePanelConfig](MorePanelConfig.md)                                                                                                                                      |      |
| tongueItemBuilder           |    | Widget Function( VoidCallback onClick, MessageListTongueType valueType, int unreadCount)                                                                                   |      |
| groupAtInfoList             |    | List< [V2TimGroupAtInfo](../../api/guan-jian-lei/group/v2timgroupatinfo.md)? >                                                                                             |      |
| config                      |    | TIMUIKitChatConfig                                                                                                                                                         |      |
| onDealWithGroupApplication  |    | ValueChanged< String >                                                                                                                                                     |      |
| abstractMessageBuilder      |    | String Function([V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message)                                                                                   |      |
| toolTipsConfig              |    | [ToolTipsConfig](ToolTipsConfig.md)                                                                                                                                        |      |
| lifeCycle                   |    | [ChatLifeCycle](ChatLifeCycle.md)                                                                                                                                          |      |
| topFixWidget                |    | Widget                                                                                                                                                                     |      |
| customStickerPanel          |    | Widget Function( {void Function() sendTextMessage, void Function(int index, String data) sendFaceMessage, void Function() deleteText, void Function(int unicode) addText}) |      |

## 代码示例与效果展示

### onTapItem

onTapItem为会话模块点击触发的函数。

* 代码示例为使用自定义onTapItem做到点击跳转到此会话聊天页面。

#### 代码示例

```dart
```

#### 效果展示

### itemBuilder

itemBuilder为用于自定义构建会话模块的构造器

* 代码示例为使用自定义itemBuilder展示会话列表信息

#### 代码示例

```dart
  
```

#### 效果展示

### itemSlidableBuilder

itemSlidableBuilder为用于自定义构建会话模块中的边缘滑动操作模块的构造器.

* 代码示例为使用itemSlidableBuilder构造边缘滑动操作模块的案例。

#### 代码示例

```dart
```

#### 效果展示

### emptyBuilder

emptyBuilder决定了当会话列表为空时会话列表页面的样式。

* 代码示例为使用自定义emptyBuilder展示暂无会话的页面样式。

#### 代码示例

```dart
```

#### 效果展示

### conversationCollector

conversationCollector为会话列表展示的过滤器

* 代码示例为使用conversationCollector做到不展示未置顶会话的案例。

#### 代码示例

```dart
```

#### 效果展示

### lastMessageBuilder

lastMessageBuilder为当前会话最后一条消息的样式构造器

* 代码示例为使用lastMessageBuilder做到在会话模块中展示当前会话最后一条消息的案例。

#### 代码示例

```dart
```

#### 效果展示

### lifeCycle

lifeCycle为聊天列表操作时的钩子函数

* 代码示例为使用shouldDeleteConversation做到在删除会话前弹出弹窗的案例。

#### 代码示例

```dart
```

#### 效果展示

### isShowOnlineStatus

isShowOnlineStatus为在会话列表中好友头像处是否展示好友在线状态的设置

* 代码示例为使用isShowOnlineStatus做到在会话列表中展示好友在线状态。

#### 代码示例

```dart
```

#### 效果展示

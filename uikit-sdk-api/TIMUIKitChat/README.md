---
description: 聊天组件
---

# TIMUIKitChat

## 组件介绍及使用场景 <a href="#he-shi-shi-yong" id="he-shi-shi-yong"></a>

组件介绍：聊天组件。

使用场景：构造聊天页面时使用。

## 参数列表

| 参数                          | 说明                | 类型                                                                                                                                                                         | 是否必填 |
| --------------------------- | ----------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---- |
| conversationID              | 聊天的会话id           | String                                                                                                                                                                     | 是    |
| conversationType            | 聊天的会话类型           | int                                                                                                                                                                        | 是    |
| conversationShowName        | 聊天页面的页面展示名        | String                                                                                                                                                                     | 是    |
| onTapAvatar                 | 点击头像的回调函数         | void Function(String userID)                                                                                                                                               | 否    |
| messageItemBuilder          | 用于自定义不同种类消息样式的构造器 | [MessageItemBuilder](MessageItemBuilder.md)                                                                                                                                | 否    |
| showTotalUnReadCount        |                   | bool                                                                                                                                                                       | 否    |
| exteraTipsActionItemBuilder |                   | Widget? Function([V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, Function() closeTooltip, \[Key? key])                                            | 否    |
| extraTipsActionItemBuilder  |                   | Widget? Function([V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, Function() closeTooltip, \[Key? key])                                            | 否    |
| draftText                   | 草稿文本              | String                                                                                                                                                                     | 否    |
| initFindingMsg              | 进入页面需要查询的消息       | [V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md)                                                                                                            | 否    |
| textFieldHintText           |                   | String                                                                                                                                                                     | 否    |
| appBarConfig                | 上方抬头栏设置           | AppBar                                                                                                                                                                     | 否    |
| mainHistoryListConfig       |                   | ListView                                                                                                                                                                   | 否    |
| morePanelConfig             | 更多操作选项设置          | [MorePanelConfig](MorePanelConfig.md)                                                                                                                                      | 否    |
| tongueItemBuilder           |                   | Widget Function( [VoidCallback](../../api/callbacks/voidcallback.md) onClick, [MessageListTongueType](MessageListTongueType.md) valueType, int unreadCount)                | 否    |
| groupAtInfoList             |                   | List< [V2TimGroupAtInfo](../../api/guan-jian-lei/group/v2timgroupatinfo.md)? >                                                                                             | 否    |
| config                      | 消息页面设置            | [TIMUIKitChatConfig](TIMUIKitChatConfig.md)                                                                                                                                | 否    |
| onDealWithGroupApplication  |                   | ValueChanged< String >                                                                                                                                                     | 否    |
| abstractMessageBuilder      |                   | String Function([V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message)                                                                                   | 否    |
| toolTipsConfig              | 长按消息显示的消息操作选项设置   | [ToolTipsConfig](ToolTipsConfig.md)                                                                                                                                        | 否    |
| lifeCycle                   | 聊天消息操作时的钩子函数      | [ChatLifeCycle](ChatLifeCycle.md)                                                                                                                                          | 否    |
| topFixWidget                |                   | Widget                                                                                                                                                                     |      |
| customStickerPanel          |                   | Widget Function( {void Function() sendTextMessage, void Function(int index, String data) sendFaceMessage, void Function() deleteText, void Function(int unicode) addText}) |      |

## 代码示例与效果展示

### conversationShowName

conversationShowName为聊天页面的聊天对象名称。

* 代码示例为使用自定义conversationShowName做到展示自定义聊天对象名称。

#### 代码示例

```dart
  @override
  Widget build(BuildContext context) {
    String? _getConvID() {
      return widget.selectedConversation.type == 1
          ? widget.selectedConversation.userID
          : widget.selectedConversation.groupID;
    }

    String _getTitle() {
      return backRemark ?? widget.selectedConversation.showName ?? "";
    }

    return TIMUIKitChat(
        key: tuiChatField,
        conversationID: _getConvID() ?? '',
        conversationType:
            widget.selectedConversation.type ?? ConversationType.V2TIM_C2C,
        conversationShowName: "customData   " + _getTitle());
  }
```

#### 效果展示

### onTapAvatar

onTapAvatar为点击头像的回调函数

{% hint style="info" %}
注意：

使用此属性时[config](TIMUIKitChatConfig.md)的isAllowClickAvatar不能为false
{% endhint %}

* 代码示例为使用自定义onTapAvatar做到点击用户头像进入用户信息页面

#### 代码示例

```dart
  @override
  Widget build(BuildContext context) {
    String? _getConvID() {
      return widget.selectedConversation.type == 1
          ? widget.selectedConversation.userID
          : widget.selectedConversation.groupID;
    }

    String _getTitle() {
      return backRemark ?? widget.selectedConversation.showName ?? "";
    }

    _onTapAvatar(String userID) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserProfile(userID: userID),
          ));
    }

    return TIMUIKitChat(
        onTapAvatar: _onTapAvatar,
        key: tuiChatField,
        conversationID: _getConvID() ?? '',
        conversationType:
            widget.selectedConversation.type ?? ConversationType.V2TIM_C2C,
        conversationShowName: _getTitle());
  }
```

#### 效果展示

### messageItemBuilder

messageItemBuilder为用于自定义不同种类消息样式的构造器

* 代码示例为使用messageItemBuilder构造自定义消息样式的案例。

#### 代码示例

```dart
```

#### 效果展示

### lifeCycle

lifeCycle为聊天消息操作时的钩子函数

* 代码示例为使用messageWillSend做到在发送消息前弹出弹窗的案例。

#### 代码示例

```dart
  @override
  Widget build(BuildContext context) {
    String? _getConvID() {
      return widget.selectedConversation.type == 1
          ? widget.selectedConversation.userID
          : widget.selectedConversation.groupID;
    }

    String _getTitle() {
      return backRemark ?? widget.selectedConversation.showName ?? "";
    }

    ChatLifeCycle lifeCycle = ChatLifeCycle(
      messageWillSend: (V2TimMessage message) async {
        // 发送消息前的逻辑
        // 弹出对话框
        Future<bool?> messageWillSendDialog() {
          return showDialog<bool>(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("提示"),
                content: const Text("您确定要发送消息吗?"),
                actions: <Widget>[
                  TextButton(
                    child: const Text("取消"),
                    onPressed: () => Navigator.of(context).pop(), // 关闭对话框
                  ),
                  TextButton(
                    child: const Text("确定"),
                    onPressed: () {
                      //关闭对话框并返回true
                      Navigator.of(context).pop(true);
                    },
                  ),
                ],
              );
            },
          );
        }

        bool isSend = await messageWillSendDialog() ?? false;
        return isSend ? message : null;
      },
    );
    return TIMUIKitChat(
        lifeCycle: lifeCycle,
        key: tuiChatField,
        conversationID: _getConvID() ?? '',
        conversationType:
            widget.selectedConversation.type ?? ConversationType.V2TIM_C2C,
        conversationShowName: _getTitle());
  }
```

#### 效果展示

### is

isShowOnlineStatus为在会话列表中好友头像处是否展示好友在线状态的设置

* 代码示例为使用isShowOnlineStatus做到在会话列表中展示好友在线状态。

#### 代码示例

```dart
```

#### 效果展示

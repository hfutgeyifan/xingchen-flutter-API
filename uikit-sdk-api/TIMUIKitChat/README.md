---
description: 聊天组件
---

# TIMUIKitChat

## 组件介绍及使用场景 <a href="#he-shi-shi-yong" id="he-shi-shi-yong"></a>

组件介绍：聊天组件。

使用场景：构造聊天页面时使用。

## 参数列表

| 参数                         | 说明                      | 类型                                                                                                                                                                         | 是否必填 |
| -------------------------- | ----------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---- |
| conversationID             | 聊天的会话id                 | String                                                                                                                                                                     | 是    |
| conversationType           | 聊天的会话类型                 | int                                                                                                                                                                        | 是    |
| conversationShowName       | 聊天页面的页面展示名              | String                                                                                                                                                                     | 是    |
| onTapAvatar                | 点击头像的回调函数               | void Function(String userID)                                                                                                                                               | 否    |
| messageItemBuilder         | 用于自定义不同种类消息样式的构造器       | [MessageItemBuilder](MessageItemBuilder.md)                                                                                                                                | 否    |
| showTotalUnReadCount       | 是否展示当前未读消息总数            | bool                                                                                                                                                                       | 否    |
| extraTipsActionItemBuilder | 新增的长按弹出消息操作功能的自定义选项的构造器 | Widget? Function([V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message, Function() closeTooltip, \[Key? key])                                            | 否    |
| draftText                  | 会话的草稿文本                 | String                                                                                                                                                                     | 否    |
| initFindingMsg             | 进入页面需要查询的消息             | [V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md)                                                                                                            | 否    |
| textFieldHintText          | 输入框默认提示语                | String                                                                                                                                                                     | 否    |
| appBarConfig               | 上方抬头栏设置                 | AppBar                                                                                                                                                                     | 否    |
| mainHistoryListConfig      | 历史消息列表的ListView配置       | ListView                                                                                                                                                                   | 否    |
| morePanelConfig            | 更多操作选项设置                | [MorePanelConfig](MorePanelConfig.md)                                                                                                                                      | 否    |
| tongueItemBuilder          | 小舌头构造器（右下角按钮提示框样式构造器）   | Widget Function( [VoidCallback](../../api/callbacks/voidcallback.md) onClick, [MessageListTongueType](MessageListTongueType.md) valueType, int unreadCount)                | 否    |
| groupAtInfoList            | 群组消息@信息列表               | List< [V2TimGroupAtInfo](../../api/guan-jian-lei/group/v2timgroupatinfo.md)? >                                                                                             | 否    |
| config                     | 消息页面设置                  | [TIMUIKitChatConfig](TIMUIKitChatConfig.md)                                                                                                                                | 否    |
| onDealWithGroupApplication | 点击处理加群申请后的回调函数          | ValueChanged< String >                                                                                                                                                     | 否    |
| abstractMessageBuilder     | 针对不同类型消息概述构造器           | String Function([V2TimMessage](../../api/guan-jian-lei/message/v2timmessage.md) message)                                                                                   | 否    |
| toolTipsConfig             | 长按消息显示的消息操作选项设置         | [ToolTipsConfig](ToolTipsConfig.md)                                                                                                                                        | 否    |
| lifeCycle                  | 聊天消息操作时的钩子函数            | [ChatLifeCycle](ChatLifeCycle.md)                                                                                                                                          | 否    |
| topFixWidget               | 聊天页面上方自定义widget         | Widget                                                                                                                                                                     | 否    |
| customStickerPanel         | 自定义表情的选择框               | Widget Function( {void Function() sendTextMessage, void Function(int index, String data) sendFaceMessage, void Function() deleteText, void Function(int unicode) addText}) | 否    |

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

* 代码示例为使用messageItemBuilder结合UIKit中的TIMUIKitTextElem构造自定义消息样式的案例。

#### 代码示例

```dart
  @override
  Widget build(BuildContext context) {
    final TUIChatViewModel model = serviceLocator<TUIChatViewModel>();
    String? _getConvID() {
      return widget.selectedConversation.type == 1
          ? widget.selectedConversation.userID
          : widget.selectedConversation.groupID;
    }

    String _getTitle() {
      return backRemark ?? widget.selectedConversation.showName ?? "";
    }

    return TIMUIKitChat(
        messageItemBuilder: MessageItemBuilder(
            textMessageItemBuilder: ((message, isShowJump, clearJump) {
          if (message.elemType == MessageElemType.V2TIM_ELEM_TYPE_TEXT) {
            message.textElem!.text = 'customData';
          }
          return TIMUIKitTextElem(
            chatModel: model,
            message: message,
            isFromSelf: message.isSelf ?? false,
            clearJump: () => model.jumpMsgID = "",
            isShowJump: isShowJump,
          );
        })),
        key: tuiChatField,
        conversationID: _getConvID() ?? '',
        conversationType:
            widget.selectedConversation.type ?? ConversationType.V2TIM_C2C,
        conversationShowName: _getTitle());
  }
```

#### 效果展示

### showTotalUnReadCount

showTotalUnReadCount为是否展示当前未读消息总数的设置

* 代码示例为使用showTotalUnReadCount做到展示当前未读消息总数。

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
        showTotalUnReadCount: true,
        key: tuiChatField,
        conversationID: _getConvID() ?? '',
        conversationType:
            widget.selectedConversation.type ?? ConversationType.V2TIM_C2C,
        conversationShowName: _getTitle());
  }
```

#### 效果展示

### extraTipsActionItemBuilder

extraTipsActionItemBuilder为新增的长按弹出消息操作功能的自定义选项的构造器

* 代码示例为使用extraTipsActionItemBuilder做到在长按显示面板做后增加自定义操作。

#### 代码示例

```dart
 @override
  Widget build(BuildContext context) {
    Widget ItemInkWell({
      Widget? child,
      GestureTapCallback? onTap,
    }) {
      return SizedBox(
        width: 50,
        child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: child,
          ),
        ),
      );
    }

    String? _getConvID() {
      return widget.selectedConversation.type == 1
          ? widget.selectedConversation.userID
          : widget.selectedConversation.groupID;
    }

    String _getTitle() {
      return backRemark ?? widget.selectedConversation.showName ?? "";
    }

    return TIMUIKitChat(
        extraTipsActionItemBuilder: (message, closeTooltip, [key]) {
          return Material(
            child: ItemInkWell(
                onTap: () {
                  closeTooltip();
                },
                child: Column(children: [
                  const Icon(
                    Icons.add_business,
                    size: 20,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'custom',
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 10,
                    ),
                  ),
                ])),
          );
        },
        key: tuiChatField,
        conversationID: _getConvID() ?? '',
        conversationType:
            widget.selectedConversation.type ?? ConversationType.V2TIM_C2C,
        conversationShowName: _getTitle());
  }
```

#### 效果展示

### draftText

draftText为会话的草稿文本

* 代码示例为使用draftText做到自定义会话的草稿文本。
* 您也可以通过[setConversationDraft](../../api/v2timconversationmanager/setconversationdraft.md)为一个会话设置草稿文本，通过会话属性中的[draftText](../../api/guan-jian-lei/message/v2timconversation.md)来获取会话草稿。

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

    String? _getDraftText() {
      return widget.selectedConversation.draftText;
    }

    return TIMUIKitChat(
        draftText: 'customDraftText',
        key: tuiChatField,
        conversationID: _getConvID() ?? '',
        conversationType:
            widget.selectedConversation.type ?? ConversationType.V2TIM_C2C,
        conversationShowName: _getTitle());
  }
```

#### 效果展示

### initFindingMsg

initFindingMsg为进入页面需要查询的消息

* 代码示例为使用initFindingMsg做到进入聊天页面并查询此会话最后一条消息。

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
        initFindingMsg: widget.selectedConversation.lastMessage,
        key: tuiChatField,
        conversationID: _getConvID() ?? '',
        conversationType:
            widget.selectedConversation.type ?? ConversationType.V2TIM_C2C,
        conversationShowName: _getTitle());
  }
```

#### 效果展示

### textFieldHintText

textFieldHintText为输入框默认提示语

* 代码示例为使用textFieldHintText做到自定义输入框默认提示语。

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
        textFieldHintText: 'customHintText',
        key: tuiChatField,
        conversationID: _getConvID() ?? '',
        conversationType:
            widget.selectedConversation.type ?? ConversationType.V2TIM_C2C,
        conversationShowName: _getTitle());
  }
```

#### 效果展示

### appBarConfig

appBarConfig为上方抬头栏设置

* 代码示例为使用appBarConfig自定义添加分享功能。

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
        appBarConfig: AppBar(
          actions: [
            if (IMDemoConfig.openShareFeature)
              IconButton(
                  onPressed: () async {
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (BuildContext context) {
                          return ShareWidget(
                            ShareInfo('腾讯云IM',
                                'https://comm.qq.com/im_demo_download/#/discuss-share',
                                img: WeChatImage.network(
                                    "https://imgcache.qq.com/operation/dianshi/other/logo.ac7337705ff26825bf66a8e074460759465c48d7.png"),
                                describe:
                                    "即时通信 IM (Instant Messaging)基于 QQ 底层 IM 能力开发，仅需植入 SDK 即可轻松集成聊天、会话、群组、资料管理和直播弹幕能力，也支持通过信令消息与白板等其他产品打通，全面覆盖您的业务场景，支持各大平台小程序接入使用，全面满足通信需要"),
                            list: [
                              ShareOpt(
                                  title: '微信好友',
                                  img: Image.asset(
                                    'assets/icon_wechat.png',
                                    width: 25.0,
                                    height: 25.0,
                                    fit: BoxFit.fill,
                                  ),
                                  shareType: ShareType.SESSION,
                                  doAction: (shareType, shareInfo) async {
                                    if (!_installedWechat) {
                                      Toast.showToast(
                                          ToastType.fail, "未检测到微信安装", context);
                                      return;
                                    }
                                    var model =
                                        _getShareModel(shareType, shareInfo);
                                    shareToWeChat(model);
                                  }),
                              ShareOpt(
                                  title: '朋友圈',
                                  img: Image.asset(
                                    'assets/icon_wechat_moments.jpg',
                                    width: 25.0,
                                    height: 25.0,
                                    fit: BoxFit.fill,
                                  ),
                                  shareType: ShareType.TIMELINE,
                                  doAction: (shareType, shareInfo) {
                                    if (!_installedWechat) {
                                      Toast.showToast(
                                          ToastType.fail, "未检测到微信安装", context);
                                      return;
                                    }
                                    var model =
                                        _getShareModel(shareType, shareInfo);
                                    shareToWeChat(model);
                                  }),
                            ],
                          );
                        });
                  },
                  icon: const Icon(Icons.share)),
            IconButton(
                padding: const EdgeInsets.only(left: 8, right: 16),
                onPressed: () async {
                  final conversationType = widget.selectedConversation.type;

                  if (conversationType == 1) {
                    final userID = widget.selectedConversation.userID;
                    // if had remark modifed its will back new remark
                    String? newRemark = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserProfile(userID: userID!),
                        ));
                    setState(() {
                      backRemark = newRemark;
                    });
                  } else {
                    final groupID = widget.selectedConversation.groupID;
                    if (groupID != null) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GroupProfilePage(
                              groupID: groupID,
                            ),
                          ));
                    }
                  }
                },
                icon: Image.asset(
                  'images/more.png',
                  package: 'tim_ui_kit',
                  height: 34,
                  width: 34,
                ))
          ],
        ),
        key: tuiChatField,
        conversationID: _getConvID() ?? '',
        conversationType:
            widget.selectedConversation.type ?? ConversationType.V2TIM_C2C,
        conversationShowName: _getTitle());
  }
```

#### 效果展示

### mainHistoryListConfig

mainHistoryListConfig为在会话列表中好友头像处是否展示好友在线状态的设置

* 代码示例为使用isShowOnlineStatus做到在会话列表中展示好友在线状态。

#### 代码示例

```dart
```

#### 效果展示

### morePanelConfig

morePanelConfig为更多操作选项设置

* 代码示例为使用morePanelConfig做到在更多操作中添加语音与视频操作。

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

    _goToVideoUI() async {
      final hasCameraPermission =
          await Permissions.checkPermission(context, Permission.camera.value);
      final hasMicphonePermission = await Permissions.checkPermission(
          context, Permission.microphone.value);
      if (!hasCameraPermission || !hasMicphonePermission) {
        return;
      }
      final isGroup = widget.selectedConversation.type == 2;
      tuiChatField.currentState.textFieldController.hideAllPanel();
      if (isGroup) {
        List<V2TimGroupMemberFullInfo>? selectedMember = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SelectCallInviter(
              groupID: widget.selectedConversation.groupID,
            ),
          ),
        );
        if (selectedMember != null) {
          final inviteMember = selectedMember.map((e) => e.userID).toList();
          _calling?.groupCall(inviteMember, CallingScenes.Video,
              widget.selectedConversation.groupID);
        }
      } else {
        final user = await sdkInstance.getLoginUser();
        final myId = user.data;
        OfflinePushInfo offlinePush = OfflinePushInfo(
          title: "",
          desc: imt("邀请你视频通话"),
          ext: "{\"conversationID\": \"c2c_$myId\"}",
          disablePush: false,
          androidOPPOChannelID: PushConfig.OPPOChannelID,
          ignoreIOSBadge: false,
        );

        _calling?.call(widget.selectedConversation.userID!, CallingScenes.Video,
            offlinePush);
      }
    }

    _goToVoiceUI() async {
      final hasMicphonePermission = await Permissions.checkPermission(
          context, Permission.microphone.value);
      if (!hasMicphonePermission) {
        return;
      }
      final isGroup = widget.selectedConversation.type == 2;
      tuiChatField.currentState.textFieldController.hideAllPanel();
      if (isGroup) {
        List<V2TimGroupMemberFullInfo>? selectedMember = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SelectCallInviter(
              groupID: widget.selectedConversation.groupID,
            ),
          ),
        );
        if (selectedMember != null) {
          final inviteMember = selectedMember.map((e) => e.userID).toList();
          _calling?.groupCall(inviteMember, CallingScenes.Audio,
              widget.selectedConversation.groupID);
        }
      } else {
        final user = await sdkInstance.getLoginUser();
        final myId = user.data;
        OfflinePushInfo offlinePush = OfflinePushInfo(
          title: "",
          desc: imt("邀请你语音通话"),
          ext: "{\"conversationID\": \"c2c_$myId\"}",
          disablePush: false,
          ignoreIOSBadge: false,
          androidOPPOChannelID: PushConfig.OPPOChannelID,
        );

        _calling?.call(widget.selectedConversation.userID!, CallingScenes.Audio,
            offlinePush);
      }
    }

    return TIMUIKitChat(
        morePanelConfig: MorePanelConfig(
          extraAction: [
            MorePanelItem(
                id: "voiceCall",
                title: imt("语音通话"),
                onTap: (c) {
                  _goToVoiceUI();
                },
                icon: Container(
                  height: 64,
                  width: 64,
                  margin: const EdgeInsets.only(bottom: 4),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: SvgPicture.asset(
                    "images/voice-call.svg",
                    package: 'tim_ui_kit',
                    height: 64,
                    width: 64,
                  ),
                )),
            MorePanelItem(
                id: "videoCall",
                title: imt("视频通话"),
                onTap: (c) {
                  _goToVideoUI();
                },
                icon: Container(
                  height: 64,
                  width: 64,
                  margin: const EdgeInsets.only(bottom: 4),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: SvgPicture.asset(
                    "images/video-call.svg",
                    package: 'tim_ui_kit',
                    height: 64,
                    width: 64,
                  ),
                ))
          ],
        ),
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

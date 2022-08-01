---
description: 好友列表组件
---

# TIMUIKitContact

## 组件介绍及使用场景 <a href="#he-shi-shi-yong" id="he-shi-shi-yong"></a>

组件介绍：好友列表组件。

使用场景：展示好友列表时使用。

## 参数列表

| 参数                 | 说明                   | 类型                                                                                     | 是否必填 |
| ------------------ | -------------------- | -------------------------------------------------------------------------------------- | ---- |
| onTapItem          | 用户模块点击触发的函数          | void Function([V2TimFriendInfo](../../api/guan-jian-lei/user/v2timfriendinfo.md) item) | 否    |
| topList            | 好友列表页面顶部模块           | List< [TopListItem](TopListItem.md) >                                                  | 否    |
| topListItemBuilder | 用于自定义构好友列表页面顶部模块的构造器 | Widget? Function([TopListItem](TopListItem.md) item)                                   | 否    |
| emptyBuilder       | 无好友时的样式构造器           | Widget Function(BuildContext context)                                                  | 否    |
| lifeCycle          | 好友列表操作时的钩子函数         | [FriendListLifeCycle](FriendListLifeCycle.md)                                          | 否    |
| isShowOnlineStatus | 好友列表中好友头像处是否展示好友在线状态 | bool                                                                                   | 否    |

## 代码示例与效果展示

### onTapItem

onTapItem为用户模块点击触发的函数。

* 代码示例为使用自定义onTapItem做到点击好友模块进入好友信息页面。

#### 代码示例

```dart
  @override
  Widget build(BuildContext context) {
    final LocalSetting localSetting = Provider.of<LocalSetting>(context);
    return TIMUIKitContact(
      isShowOnlineStatus: localSetting.isShowOnlineStatus,
      onTapItem: (item) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserProfile(userID: item.userID),
            ));
      },
      emptyBuilder: (context) => Center(
        child: Text(imt("无联系人")),
      ),
    );
  }
```

#### 效果展示

![](../../\_book/.gitbook/assets/TIMUIKitContact-ontapitem.gif)

### topList与topListItemBuilder

topList决定了好友列表顶部功能栏的模块的属性与顺序。

topListItemBuilder决定了好友列表顶部功能栏模块的样式。

* 代码示例为使用自定义topList、topListItemBuilder在好友页面上方显示新的联系人、群组列表、黑名单列表的案例。

#### 代码示例

```dart
  @override
  Widget build(BuildContext context) {
    final LocalSetting localSetting = Provider.of<LocalSetting>(context);
    _topListItemTap(String id) {
      switch (id) {
        case "newContact":
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NewContact(),
              ));
          break;
        case "groupList":
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GroupList(),
              ));
          break;
        case "blackList":
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BlackList(),
              ));
      }
    }

    String _getImagePathByID(String id) {
      final themeTypeSubfix = Provider.of<DefaultThemeData>(context)
          .currentThemeType
          .toString()
          .replaceFirst('ThemeType.', '');
      switch (id) {
        case "newContact":
          return "assets/newContact_$themeTypeSubfix.png";
        case "groupList":
          return "assets/groupList_$themeTypeSubfix.png";
        case "blackList":
          return "assets/blackList_$themeTypeSubfix.png";
        default:
          return "";
      }
    }

    Widget? _topListBuilder(TopListItem item) {
      final showName = item.name;

      return InkWell(
        onTap: () {
          _topListItemTap(item.id);
        },
        child: Container(
          padding: const EdgeInsets.only(top: 10, left: 16),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                margin: const EdgeInsets.only(right: 12),
                child: Avatar(
                  faceUrl: _getImagePathByID(item.id),
                  showName: showName,
                  isFromLocal: true,
                ),
              ),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.only(top: 10, bottom: 19),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: hexToColor("DBDBDB")))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      showName,
                      style:
                          TextStyle(color: hexToColor("111111"), fontSize: 18),
                    ),
                    Expanded(child: Container()),
                    const TIMUIKitUnreadCount(),
                    Container(
                      margin: const EdgeInsets.only(right: 16),
                      child: Icon(
                        Icons.keyboard_arrow_right,
                        color: hexToColor('BBBBBB'),
                      ),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      );
    }

    return TIMUIKitContact(
      isShowOnlineStatus: localSetting.isShowOnlineStatus,
      topList: [
        TopListItem(
          name: imt("新的联系人"),
          id: "newContact",
          icon: Image.asset(_getImagePathByID("newContact")),
        ),
        TopListItem(
          name: imt("我的群聊"),
          id: "groupList",
          icon: Image.asset(_getImagePathByID("groupList")),
        ),
        TopListItem(
          name: imt("黑名单"),
          id: "blackList",
          icon: Image.asset(_getImagePathByID("blackList")),
        )
      ],
      topListItemBuilder: _topListBuilder,
      onTapItem: (item) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserProfile(userID: item.userID),
            ));
      },
      emptyBuilder: (context) => Center(
        child: Text(imt("无联系人")),
      ),
    );
  }
```

#### 效果展示

![](../../\_book/.gitbook/assets/TIMUIKitContact-toplist.gif)

### emptyBuilder

emptyBuilder决定了当用户好友列表为空时好友列表页面的样式。

* 代码示例为使用自定义emptyBuilder展示暂无好友的页面样式。

#### 代码示例

```dart
  @override
  Widget build(BuildContext context) {
    return TIMUIKitContact(
      emptyBuilder: (context) => Center(
        child: Text(imt("无联系人")),
      ),
    );
  }
```

#### 效果展示

![](../../\_book/.gitbook/assets/TIMUIKitContact-emptybuilder.png)

### lifeCycle

lifeCycle为好友列表操作时的钩子函数

* 代码示例为使用friendListWillMount做到在用户列表添加一个机器人的案例。

#### 代码示例

```dart
  @override
  Widget build(BuildContext context) {
    final LocalSetting localSetting = Provider.of<LocalSetting>(context);
    FriendListLifeCycle lifeCycle = FriendListLifeCycle(
      friendListWillMount: (List<V2TimFriendInfo> friendList) async {
        V2TimFriendInfo robot = V2TimFriendInfo(userID: 'robot');
        friendList.insertAll(0, [robot]);
        return friendList;
      },
    );
    return TIMUIKitContact(
      lifeCycle: lifeCycle,
      isShowOnlineStatus: localSetting.isShowOnlineStatus,
      onTapItem: (item) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserProfile(userID: item.userID),
            ));
      },
      emptyBuilder: (context) => Center(
        child: Text(imt("无联系人")),
      ),
    );
  }
```

#### 效果展示

![](../../\_book/.gitbook/assets/TIMUIKitContact-lifecircle.png)

### isShowOnlineStatus

isShowOnlineStatus为在好友列表中好友头像处是否展示好友在线状态的设置

* 代码示例为使用isShowOnlineStatus做到在好友列表中展示好友在线状态。

#### 代码示例

```dart
  @override
  Widget build(BuildContext context) {
    return TIMUIKitContact(
      isShowOnlineStatus: true,
      onTapItem: (item) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserProfile(userID: item.userID),
            ));
      },
      emptyBuilder: (context) => Center(
        child: Text(imt("无联系人")),
      ),
    );
  }
```

#### 效果展示

![](../../\_book/.gitbook/assets/TIMUIKitContact-isShowOnlineStatus.png)

img{ width:220px; height:400px; }

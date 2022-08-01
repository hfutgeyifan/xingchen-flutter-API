---
description: 群组列表组件
---

# TIMUIKitGroup

## 组件介绍及使用场景 <a href="#he-shi-shi-yong" id="he-shi-shi-yong"></a>

组件介绍：群组列表组件。

使用场景：展示群组列表时使用。

## 参数列表

| 参数             | 说明              | 类型                                                                                                                  | 是否必填 |
| -------------- | --------------- | ------------------------------------------------------------------------------------------------------------------- | ---- |
| onTapItem      | 群组模块点击触发的函数     | void Function([V2TimGroupInfo](../../api/guan-jian-lei/group/v2timgroupinfo.md) groupInfo)                          | 否    |
| emptyBuilder   | 无群组时的样式构造器      | Widget Function(BuildContext context)                                                                               | 否    |
| itemBuilder    | 用于自定义构建群组模块的构造器 | Widget Function( BuildContext context, [V2TimGroupInfo](../../api/guan-jian-lei/group/v2timgroupinfo.md) groupInfo) | 否    |
| groupCollector | 群组列表展示的过滤器      | bool Function([V2TimGroupInfo](../../api/guan-jian-lei/group/v2timgroupinfo.md)? groupInfo)                         | 否    |

## 代码示例与效果展示

### onTapItem

onTapItem为群组模块点击触发的函数。

* 代码示例为使用自定义onTapItem做到点击跳转到群组聊天页面。

#### 代码示例

```dart
  @override
  Widget build(BuildContext context) {
    _jumpToChatPage(BuildContext context, String groupId) async {
      final res = await sdkInstance
          .getConversationManager()
          .getConversation(conversationID: "group_$groupId");
      if (res.code == 0) {
        final conversation = res.data;
        if (conversation != null) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Chat(selectedConversation: conversation),
              ));
        }
      }
    }

    final theme = Provider.of<DefaultThemeData>(context).theme;
    return Scaffold(
      appBar: AppBar(
          title: Text(
            imt("群聊"),
            style: const TextStyle(color: Colors.white, fontSize: 17),
          ),
          shadowColor: Colors.white,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                theme.lightPrimaryColor ?? CommonColor.lightPrimaryColor,
                theme.primaryColor ?? CommonColor.primaryColor
              ]),
            ),
          ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          )),
      body: TIMUIKitGroup(
        onTapItem: (groupInfo) {
          final groupID = groupInfo.groupID;
          _jumpToChatPage(context, groupID);
        },
        emptyBuilder: (_) {
          return Center(
            child: Text(imt("暂无群聊")),
          );
        },
        groupCollector: (groupInfo) {
          final groupID = groupInfo?.groupID ?? "";
          return !groupID.contains("im_discuss_");
        },
      ),
    );
  }
```

#### 效果展示

![](../../\_book/.gitbook/assets/TIMUIKitGroup-ontapitem.gif)

### emptyBuilder

emptyBuilder决定了当群组列表为空时群组列表页面的样式。

* 代码示例为使用自定义emptyBuilder展示暂无群组的页面样式。

#### 代码示例

```dart
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<DefaultThemeData>(context).theme;
    return Scaffold(
      appBar: AppBar(
          title: Text(
            imt("群聊"),
            style: const TextStyle(color: Colors.white, fontSize: 17),
          ),
          shadowColor: Colors.white,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                theme.lightPrimaryColor ?? CommonColor.lightPrimaryColor,
                theme.primaryColor ?? CommonColor.primaryColor
              ]),
            ),
          ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          )),
      body: TIMUIKitGroup(
        onTapItem: (groupInfo) {
          final groupID = groupInfo.groupID;
          _jumpToChatPage(context, groupID);
        },
        emptyBuilder: (_) {
          return Center(
            child: Text(imt("暂无群聊")),
          );
        },
        groupCollector: (groupInfo) {
          final groupID = groupInfo?.groupID ?? "";
          return !groupID.contains("im_discuss_");
        },
      ),
    );
  }
```

#### 效果展示

![](../../\_book/.gitbook/assets/TIMUIKitGroup-emptybuilder.png)

### itemBuilder

itemBuilder为用于自定义构建群组模块的构造器

* 代码示例为使用自定义itemBuilder展示群组列表信息

#### 代码示例

```dart
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<DefaultThemeData>(context).theme;
    _jumpToChatPage(BuildContext context, String groupId) async {
      final res = await sdkInstance
          .getConversationManager()
          .getConversation(conversationID: "group_$groupId");
      if (res.code == 0) {
        final conversation = res.data;
        if (conversation != null) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Chat(selectedConversation: conversation),
              ));
        }
      }
    }

    Widget _itemBuilder(BuildContext context, V2TimGroupInfo groupInfo) {
      final theme = Provider.of<TUIThemeViewModel>(context).theme;
      final showName = groupInfo.groupName ?? groupInfo.groupID;
      final faceUrl = groupInfo.faceUrl ?? "";
      return Container(
        padding: const EdgeInsets.only(top: 10, left: 16),
        child: InkWell(
          onTap: (() {
            final groupID = groupInfo.groupID;
            _jumpToChatPage(context, groupID);
          }),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 12),
                margin: const EdgeInsets.only(right: 12),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: Avatar(faceUrl: faceUrl, showName: showName),
                ),
              ),
              Expanded(
                  child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: theme.weakDividerColor ??
                                CommonColor.weakDividerColor))),
                child: Text(
                  showName,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                ),
              ))
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
          title: Text(
            imt("群聊"),
            style: const TextStyle(color: Colors.white, fontSize: 17),
          ),
          shadowColor: Colors.white,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                theme.lightPrimaryColor ?? CommonColor.lightPrimaryColor,
                theme.primaryColor ?? CommonColor.primaryColor
              ]),
            ),
          ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          )),
      body: TIMUIKitGroup(
        itemBuilder: _itemBuilder,
        emptyBuilder: (_) {
          return Center(
            child: Text(imt("暂无群聊")),
          );
        },
        groupCollector: (groupInfo) {
          final groupID = groupInfo?.groupID ?? "";
          return !groupID.contains("im_discuss_");
        },
      ),
    );
  }
```

#### 效果展示

![](<../../.gitbook/assets/TIMUIKitGroup-itembuilder (1) (1) (1) (1) (1).png>)

### groupCollector

groupCollector为群组列表展示的过滤器

* 代码示例为使用groupCollector做到不展示群组名称为test2的案例。

#### 代码示例

```dart
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<DefaultThemeData>(context).theme;
    return Scaffold(
      appBar: AppBar(
          title: Text(
            imt("群聊"),
            style: const TextStyle(color: Colors.white, fontSize: 17),
          ),
          shadowColor: Colors.white,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                theme.lightPrimaryColor ?? CommonColor.lightPrimaryColor,
                theme.primaryColor ?? CommonColor.primaryColor
              ]),
            ),
          ),
          iconTheme: const IconThemeData(
            color: Colors.white,
          )),
      body: TIMUIKitGroup(
        onTapItem: (groupInfo) {
          final groupID = groupInfo.groupID;
          _jumpToChatPage(context, groupID);
        },
        emptyBuilder: (_) {
          return Center(
            child: Text(imt("暂无群聊")),
          );
        },
        groupCollector: (V2TimGroupInfo? groupInfo) {
          final groupName = groupInfo?.groupName ?? "";
          return !groupName.contains("test2");
        },
      ),
    );
  }
```

#### 效果展示

![](../../\_book/.gitbook/assets/TIMUIKitGroup-groupCollector1.png) ![](../../\_book/.gitbook/assets/TIMUIKitGroup-groupCollector2.png)

img{ width:220px; height:400px; }

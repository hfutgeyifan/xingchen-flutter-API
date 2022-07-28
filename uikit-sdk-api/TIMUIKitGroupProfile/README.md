---
description: 群组信息组件
---

# TIMUIKitGroupProfile

## 组件介绍及使用场景 <a href="#he-shi-shi-yong" id="he-shi-shi-yong"></a>

组件介绍：群组信息组件

使用场景：展示群组信息时使用。

## 参数列表

| 参数                   | 说明                                                                      | 类型                                                          | 是否必填 |
| -------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------- | ---- |
| groupID              | 需要展示群组信息的群组id                                                           | String                                                      | 是    |
| backGroundColor      |                                                                         | Color                                                       | 否    |
| profileWidgetBuilder | 用于自定义构建群组信息页面不同部分的构造器                                                   | [GroupProfileWidgetBuilder](GroupProfileWidgetBuilder.md)   | 否    |
| profileWidgetsOrder  | 用于自定义构建群组信息页面不同部分的排序设置                                                  | List< [GroupProfileWidgetEnum](GroupProfileWidgetEnum.md) > | 否    |
| builder              | 用于自定义构建整个用群组信息页面的构造器（若使用此属性则profileWidgetBuilder与profileWidgetsOrder失效） | [GroupProfileBuilder](GroupProfileBuilder.md)               | 否    |
| lifeCycle            | 群组信息操作时的钩子函数                                                            | [GroupProfileLifeCycle](GroupProfileLifeCycle.md)           | 否    |

## 代码示例与效果展示

### profileWidgetBuilder与profileWidgetsOrder

profileWidgetsOrder决定了profileWidgetBuilder中组件在页面的排列顺序。

* 例如，当profileWidgetsOrder为\[ProfileWidgetEnum.userInfoCard,ProfileWidgetEnum.portraitBar]时，userInfoCard组件会在portraitBar组件的上方。

profileWidgetBuilder决定了在TIMUIKitProfile中不同名称的组件的渲染结果。

* profileWidgetBuilder中除了searchBar与customBuilder(One-Five)，其余均有默认组件。
* 代码示例为自定义searchBar与customBuilderOne的示例，如用户需要自定义其余组件，在传入TIMUIKitProfile的profileWidgetBuilder属性中添加[组件名](ProfileWidgetBuilder.md)即可。

#### 代码示例

```dart
  
```

#### 效果展示

### builder

#### 代码示例

builder为用于自定义构建整个用户信息页面的构造器

* 若使用此属性则profileWidgetBuilder与profileWidgetsOrder失效
* 代码示例为使用自定义builder只展示用户信息卡片、用户性别、用户生日的案例

```dart
```

#### 效果展示

### lifeCycle

#### 代码示例

lifeCycle为用户信息操作时的钩子函数

* 代码示例为使用shouldAddFriend做到添加好友前跳出弹窗的案例。

```dart
  
```

img{ display: inline-block; width:250px; height:400px; }

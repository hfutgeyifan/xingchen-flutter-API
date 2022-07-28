---
description: 用于自定义构建整个群组信息页面的构造器
---

# GroupProfileBuilder

## 功能介绍

用于自定义构建整个群组信息页面的构造器

{% hint style="info" %}
若使用此属性则[profileWidgetBuilder](GroupProfileWidgetBuilder.md)与profileWidgetsOrder失效
{% endhint %}

## 参数详解

| 参数名称            | 参数类型                                                                                           | 是否必填 | 描述     |
| --------------- | ---------------------------------------------------------------------------------------------- | ---- | ------ |
| context         | BuildContext                                                                                   | 是    | 构造器上下文 |
| groupInfo       | [V2TimGroupInfo](../../api/guan-jian-lei/group/v2timgroupinfo.md)                              | 是    | 群组信息   |
| groupMemberList | List< [V2TimGroupMemberFullInfo](../../api/guan-jian-lei/group/v2timgroupmemberfullinfo.md)? > | 是    | 群组成员信息 |

## 返回值

```dart
Widget
```

## 返回值详解

{% hint style="info" %}
此属性返回一个Widget
{% endhint %}

## 代码示例

代码示例可见[TIMUIKitGroupProfile](./)

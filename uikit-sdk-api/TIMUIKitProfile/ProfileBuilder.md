---
description: 用于自定义构建整个用户信息页面的构造器
---

# ProfileBuilder

## 功能介绍

用于自定义构建整个用户信息页面的构造器

{% hint style="info" %}
若使用此属性则[profileWidgetBuilder](ProfileWidgetBuilder.md)与profileWidgetsOrder失效
{% endhint %}

## 参数详解

| 参数名称         | 参数类型                                                                      | 是否必填 | 描述     |
| ------------ | ------------------------------------------------------------------------- | ---- | ------ |
| context      | BuildContext                                                              | 是    | 构造器上下文 |
| friendInfo   | [V2TimFriendInfo](../../api/guan-jian-lei/user/v2timfriendinfo.md)        | 是    | 用户信息   |
| conversation | [V2TimConversation](../../api/guan-jian-lei/message/v2timconversation.md) | 是    | 会话信息   |
| friendType   | int                                                                       | 是    | 好友类型   |
| isMute       | bool                                                                      | 是    | 是否禁言   |

## 返回值

```dart
Widget
```

## 返回值详解

{% hint style="info" %}
此属性返回一个Widget
{% endhint %}

## 代码示例

代码示例可见[TIMUIKitProfile](./)

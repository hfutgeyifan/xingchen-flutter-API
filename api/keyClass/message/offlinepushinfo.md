---
description: 消息的离线推送信息
---

# OfflinePushInfo

## 关键类描述

消息的离线推送信息

## 参数

### title

* 参数类型 : String
* 参数描述 : 离线推送展示的标题。

### desc

* 参数类型 : String
* 参数描述 : 离线推送展示的内容。 自定义消息进行离线推送，必须设置此字段内容。

### disablePush

* 参数类型 : bool
* 参数描述 : 是否关闭推送（默认开启推送）。

### ext

* 参数类型 : String
* 参数描述 : 离线推送扩展字段

{% hint style="info" %}
iOS: 收到离线推送的一方可以在 UIApplicationDelegate -> didReceiveRemoteNotification -> userInfo 拿到这个字段，用这个字段可以做 UI 跳转逻辑
{% endhint %}

### iOSSound

* 参数类型 : String
* 参数描述 : 离线推送声音设置（仅对 iOS 生效）

{% hint style="info" %}
当 iOSSound = kIOSOfflinePushNoSound，表示接收时不会播放声音。

当 iOSSound = kIOSOfflinePushDefaultSound，表示接收时播放系统声音。&#x20;

如果要自定义 iOSSound，需要先把语音文件链接进 Xcode 工程，然后把语音文件名（带后缀）设置给 iOSSound。
{% endhint %}

### ignoreIOSBadge

* 参数类型 : bool
* 参数描述 : 离线推送忽略 badge 计数（仅对 iOS 生效）， 如果设置为 YES，在 iOS 接收端，这条消息不会使 APP 的应用图标未读计数增加。

### androidOPPOChannelID

* 参数类型 : String
* 参数描述 : 离线推送设置 OPPO 手机推送的 ChannelID, 仅支持 8.0 系统及以上。（应用配置接入 OPPO 推送的必须要设置）

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述 : 返回消息的离线推送信息的JSON格式

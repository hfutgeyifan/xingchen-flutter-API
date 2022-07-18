---
description: 自定义消息离线推送
---

# V2TimOfflinePushInfo

## 关键类描述

自定义消息离线推送

## 参数

### title

* 参数类型 : String
* 参数描述：离线推送展示的标题。

### desc

* 参数类型 : String
* 参数描述：离线推送展示的内容。 自定义消息进行离线推送，必须设置此字段内容。

### disablePush

* 参数类型 : bool
* 参数描述：是否关闭推送（默认开启推送）。

### iOSSound

* 参数类型 : String
* 参数描述：离线推送声音设置（仅对 iOS 生效）

{% hint style="info" %}
当 iOSSound = kIOSOfflinePushNoSound，表示接收时不会播放声音。

当 iOSSound = kIOSOfflinePushDefaultSound，表示接收时播放系统声音。&#x20;

如果要自定义 iOSSound，需要先把语音文件链接进 Xcode 工程，然后把语音文件名（带后缀）设置给 iOSSound。
{% endhint %}

### ignoreIOSBadge

* 参数类型 : bool
* 参数描述：离线推送忽略 badge 计数（仅对 iOS 生效）， 如果设置为 YES，在 iOS 接收端，这条消息不会使 APP 的应用图标未读计数增加。

### androidOPPOChannelID

* 参数类型 : String
* 参数描述：离线推送设置 OPPO 手机推送的 ChannelID, 仅支持 8.0 系统及以上。（应用配置接入 OPPO 推送的必须要设置）



### androidVIVOClassification

* 参数类型 : String
* 参数描述：离线推送设置 vivo 手机推送消息的类型，0：运营消息，1：系统消息。默认取值为 1。（应用配置接入 vivo 推送可以根据需要修改设置）



### androidSound

* 参数类型 : String
* 参数描述：离线推送声音设置（仅对 Android 生效, 仅 imsdk 6.1 及以上版本支持）

{% hint style="info" %}
只有华为和谷歌手机支持设置铃音提示，小米铃音设置请您参照：https://dev.mi.com/console/doc/detail?pId=1278%23\_3\_0 AndroidSound: Android 工程里 raw 目录中的铃声文件名，不需要后缀名。
{% endhint %}

### toJson

* 参数类型 : Map< String, dynamic > toJson()
* 参数描述：返回自定义消息离线推送的JSON格式

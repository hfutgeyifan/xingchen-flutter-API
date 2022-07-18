---
description: 设置苹果系统离线推送专用监听器
---

# setAPNSListener

## API功能介绍

设置苹果系统离线推送专用监听器

* 为兼容苹果系统设置的离线推送专用监听器
* 先调用setAPNSListener()，再调用doBackground()

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回模板

```dart
void
```

## 返回参数详解

{% hint style="info" %}
此API无返回值
{% endhint %}

## 使用案例  &#x20;

```dart
    //首先设置苹果系统离线推送专用监听器
    TencentImSDKPlugin.v2TIMManager.setAPNSListener();
    //APP 检测到应用退后台时可以调用此接口
    V2TimCallback doBackgroundRes = await TencentImSDKPlugin.v2TIMManager
        .getOfflinePushManager()
        .doBackground(unreadCount: 0);
    if (doBackgroundRes.code == 0) {
      //调用成功后的逻辑
    }
```

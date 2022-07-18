---
description: 高级消息功能入口
---

# getMessageManager

## API功能介绍

高级消息功能入口

* 发送消息方法在核心类 `TencentImSDKPlugin.v2TIMManager.getMessageManager()`中。

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回模板

```dart
V2TIMMessageManager
```

## 返回参数详解

| 名称                  | 数值类型                                                              | 描述       |
| ------------------- | ----------------------------------------------------------------- | -------- |
| V2TIMMessageManager | [V2TIMMessageManager](../../class/manager/v2timmessagemanager.md) | 高级消息功能入口 |

## 使用案例  &#x20;

```dart
    // 使用getMessageManager创建消息的案例
    // 创建文本消息
    V2TimValueCallback<V2TimMsgCreateInfoResult> createTextMessageRes =
        await TencentImSDKPlugin.v2TIMManager
            .getMessageManager()
            .createTextMessage(
              text: "test", // 文本信息
            );
    if (createTextMessageRes.code == 0) {
      // 文本信息创建成功
      String? id = createTextMessageRes.data?.id;
      // 发送文本消息
      // 在sendMessage时，若只填写receiver则发个人用户单聊消息
      //                 若只填写groupID则发群组消息
      //                 若填写了receiver与groupID则发群内的个人用户，消息在群聊中显示，只有指定receiver能看见
      V2TimValueCallback<V2TimMessage> sendMessageRes = await TencentImSDKPlugin
          .v2TIMManager
          .getMessageManager()
          .sendMessage(id: id!, receiver: "userID", groupID: "groupID");
      if (sendMessageRes.code == 0) {
        // 发送成功
      }
    }
```

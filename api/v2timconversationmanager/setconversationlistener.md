---
description: 设置会话监听器
---

# setConversationListener

## 功能介绍

添加关系链监听器

## 参数详解

| 参数名称     | 参数类型                                          | 是否必填 | 描述         |
| -------- | --------------------------------------------- | ---- | ---------- |
| listener | [V2TimConversationListener](broken-reference) | 是    | 需要设置的会话监听器 |

## 返回值

```dart
void
```

## 返回值详解

{% hint style="info" %}
此方法无返回值
{% endhint %}

## 代码示例  &#x20;

```dart
      //设置会话监听器
      V2TimConversationListener listener = V2TimConversationListener(
      onConversationChanged: (List<V2TimConversation> conversationList) => {
        //某些会话的关键信息发生变化（未读计数发生变化、最后一条消息被更新等等），可以根据会话的 lastMessage -> timestamp 重新对会话列表做排序
        //conversationList 改变的会话列表
      },
      onNewConversation: (List<V2TimConversation> conversationList) => {
        //有新的会话（比如收到一个新同事发来的单聊消息、或者被拉入了一个新的群组中），可以根据会话的 lastMessage -> timestamp 重新对会话列表做排序
        //conversationList 新的会话列表
      },
      onSyncServerFailed: () => {
        //同步服务器会话失败
      },
      onSyncServerFinish: () => {
        //同步服务器会话完成，如果会话有变更，会通过 onNewConversation | onConversationChanged 回调告知客户
      },
      onSyncServerStart: () => {
        //同步服务器会话开始，SDK 会在登录成功或者断网重连后自动同步服务器会话，您可以监听这个事件做一些 UI 进度展示操作。
      },
      onTotalUnreadMessageCountChanged: (int totalUnreadCount) => {
        //会话未读总数变更通知，未读总数会减去设置为免打扰的会话的未读数
        //totalUnreadCount 会话未读总数
      },
    );
    //添加会话监听器
    TencentImSDKPlugin.v2TIMManager
        .getConversationManager()
        .setConversationListener(listener: listener);//需要设置的会话监听器
```

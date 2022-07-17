---
description: 设置会话草稿
---

# setConversationDraft

## API功能介绍

设置会话草稿

* 在发送消息时，可能会遇到消息尚未编辑完，就要切换至其它聊天窗口的情况。这些未编辑完的消息可通过 `setConversationDraft` 接口保存，以便于下次回到这个聊天界面时，通过 V2TIMConversation 对象的 draftText 字段，获取到尚未编辑完的内容，继续编辑。
* 如果这个接口的 draftText 参数为空，表示取消草稿。

{% hint style="info" %}
注意：

1. 草稿仅支持文本内容。
2. 草稿仅在本地保存，不会存储到服务器，因此不能多端同步，程序卸载重装会失效。
{% endhint %}

## 参数详解

| 参数名称           | 参数类型   | 是否必填 | 描述          |
| -------------- | ------ | ---- | ----------- |
| conversationID | String | 是    | 需要设置草稿的会话id |
| draftText      | String | 否    | 草稿信息        |

## 返回模板

```dart
V2TimCallback

{
    code : int
    desc : String
}
```

## 返回参数详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |

## 使用案例  &#x20;

```dart
    //设置会话草稿
    V2TimCallback setConversationDraftRes = await TencentImSDKPlugin.v2TIMManager
        .getConversationManager()
        .setConversationDraft(
          conversationID: "",//需要设置草稿的会话id
          draftText: "",//草稿信息
        );
    if (setConversationDraftRes.code == 0) {
      //设置成功
    }
```

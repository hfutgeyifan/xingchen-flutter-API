---
description: 删除本地消息√
---

# deleteMessageFromLocalStorage

## 功能介绍

删除本地消息

{% hint style="info" %}
1. 该接口只能删除本地历史，消息删除后，SDK 会在本地把这条消息标记为已删除状态，调用 [getHistoryMessageList](gethistorymessagelist.md) 不能再拉取到。
2. 如果程序卸载重装，本地会失去对这条消息的删除标记，调用 [getHistoryMessageList](gethistorymessagelist.md) 还能再拉取到该条消息。
3. web不支持该接口
{% endhint %}

## 参数详解

| 参数名称  | 参数类型   | 是否必填 | 描述        |
| ----- | ------ | ---- | --------- |
| msgID | String | 是    | 需要删除的消息id |

## 返回值

```dart
V2TimCallback

{
    code : int
    desc : String
}
```

## 返回值详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |

## 代码示例  &#x20;

```dart
    // 删除本地消息
    V2TimCallback deleteMessageFromLocalStorageRes = await TencentImSDKPlugin
        .v2TIMManager
        .getMessageManager()
        .deleteMessageFromLocalStorage(msgID: ""); // 需要删除的消息id
    if (deleteMessageFromLocalStorageRes.code == 0) {
      //删除成功
    }
```

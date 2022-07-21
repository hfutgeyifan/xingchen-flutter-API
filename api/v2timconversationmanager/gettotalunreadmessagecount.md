---
description: 获取会话未读总数√
---

# getTotalUnreadMessageCount

## 功能介绍

获取会话未读总数

## 参数详解

{% hint style="info" %}
此API无参数。
{% endhint %}

## 返回值

```dart
V2TimValueCallback<int>

{
    code : int
    desc : String
    data : int//会话未读总数
}
```

## 返回值详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |
| data | int    | 会话未读总数                                                         |

## 代码示例  &#x20;

```dart
    //获取会话未读总数
    V2TimValueCallback<int> getTotalUnreadMessageCountRes =
        await TencentImSDKPlugin.v2TIMManager
            .getConversationManager()
            .getTotalUnreadMessageCount();
    if (getTotalUnreadMessageCountRes.code == 0) {
      //拉取成功
      int? count = getTotalUnreadMessageCountRes.data;//会话未读总数
    }
```

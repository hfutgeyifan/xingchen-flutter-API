---
description: 删除会话分组
---

# deleteConversationGroup

## 功能介绍

删除会话分组

{% hint style="info" %}
注意：

1. 4.0.8及以后版本支持。
2. web不支持
{% endhint %}

## 参数详解

| 参数名称      | 参数类型   | 是否必填 | 描述           |
| --------- | ------ | ---- | ------------ |
| groupName | String | 是    | 需要删除的会话分组的名称 |

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

## 代码示例

```dart
    //删除会话分组
    V2TimCallback deleteConversationGroupRes = await TencentImSDKPlugin
        .v2TIMManager
        .getConversationManager()
        .deleteConversationGroup(groupName: "groupName");//需要删除的会话分组的名称
    if (deleteConversationGroupRes.code == 0) {
      // 删除成功
    }
```

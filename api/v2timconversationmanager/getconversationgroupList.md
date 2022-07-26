---
description: 获取会话分组列表
---

# getConversationGroupList

## 功能介绍

获取会话分组列表

{% hint style="info" %}
注意：

1. 4.0.8及以后版本支持。
2. web不支持
{% endhint %}

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回值

```dart
V2TimValueCallback<List<String>>

{
    code : int
    desc : String
    data : List<String>//会话分组名称列表
}
```

## 返回值详解

| 名称   | 数值类型           | 描述                                                             |
| ---- | -------------- | -------------------------------------------------------------- |
| code | int            | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String         | 请求结果描述                                                         |
| data | List< String > | 回话分组名称列表                                                       |

## 代码示例

```dart
    //获取会话分组列表
    V2TimValueCallback<List<String>> getConversationGroupListDataRes =
        await TencentImSDKPlugin.v2TIMManager
            .getConversationManager()
            .getConversationGroupList();
    if (getConversationGroupListDataRes.code == 0) {
      // 查询成功
      getConversationGroupListDataRes.data?.forEach((element) {
        element;//此条会话分组的名称
      });
    }
```

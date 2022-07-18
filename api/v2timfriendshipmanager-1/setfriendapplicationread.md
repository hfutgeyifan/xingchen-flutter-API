---
description: 设置好友申请已读
---

# setFriendApplicationRead

## API功能介绍

设置好友申请已读

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

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
    //设置好友申请已读
    V2TimCallback setFriendApplicationReadRes = await TencentImSDKPlugin
        .v2TIMManager
        .getFriendshipManager()
        .setFriendApplicationRead();
    if (setFriendApplicationReadRes.code == 0) {
      // 设置成功
    }
```

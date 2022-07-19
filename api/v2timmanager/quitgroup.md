---
description: 退出群组
---

# quitGroup

## 功能介绍

退出群组

* 退群者会收到 [`onQuitFromGroup`](../callbacks/onquitfromgroupcallback.md) 回调。
* 群组内其他成员会收到 [`onMemberLeave`](../callbacks/onmemberleavecallback.md) 回调。

{% hint style="info" %}
注意：对于陌生人社交群（Public）、临时会议群（Meeting）、社群（Community）和直播群（AVChatRoom），群主**不可以**退群，只能 解散群组。
{% endhint %}

## 参数详解

| 参数名称    | 参数类型   | 是否必填 | 描述         |
| ------- | ------ | ---- | ---------- |
| groupID | String | 是    | 需要退出的群组 ID |

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
// 加入群组
    V2TimCallback quitGroupRes = await TencentImSDKPlugin.v2TIMManager
        .quitGroup(
          groupID: "groupID",// 需要退出的群组 ID
    if (quitGroupRes.code == 0) {
      // 退出成功
    }
    
    
```

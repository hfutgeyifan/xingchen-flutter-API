---
description: 转让群主
---

# transferGroupOwner

## API功能介绍

转让群主

* 群主转让后，全员会收到 onGroupInfoChanged 回调，其中 `V2TIMGroupChangeInfo` 的 type 为 `V2TIMGroupChangeInfo.V2TIM_GROUP_INFO_CHANGE_TYPE_OWNER`，value 值为新群主的 UserID。

{% hint style="info" %}
普通类型的群（Work、Public、Meeting）：只有群主才有权限进行群转让操作。&#x20;

直播群（AVChatRoom）：不支持转让群主。
{% endhint %}

## 参数详解

| 参数名称    | 参数类型   | 是否必填 | 描述         |
| ------- | ------ | ---- | ---------- |
| groupID | String | 是    | 设置群组的id    |
| userID  | String | 是    | 被设置角色的用户id |

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
    // 转让群主
    V2TimCallback transferGroupOwnerRes = await TencentImSDKPlugin.v2TIMManager
        .getGroupManager()
        .transferGroupOwner(
          groupID: "groupID",
          userID: "userID",
          );
    if (transferGroupOwnerRes == 0) {
      // 转让成功
    }
```

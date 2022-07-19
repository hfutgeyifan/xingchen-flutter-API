---
description: 获取黑名单列表
---

# getBlackList

## 功能介绍

获取黑名单列表

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回值

```dart
V2TimValueCallback<List<V2TimFriendInfo>>

{
    code : int
    desc : String
    data : List<V2TimFriendInfo>//获取的黑名单列表
}
```

## 返回值详解

| 名称   | 数值类型                                                                | 描述                                                             |
| ---- | ------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                 | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                              | 请求结果描述                                                         |
| data | List< [V2TimFriendInfo](../guan-jian-lei/user/v2timfriendinfo.md) > | 获取的黑名单列表                                                       |

## 代码示例

```dart
    //获取黑名单列表
    V2TimValueCallback<List<V2TimFriendInfo>> getBlackListRes =
        await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .getBlackList();
    if (getBlackListRes.code == 0) {
      // 查询成功
      getBlackListRes.data?.forEach((element) {
        element.friendCustomInfo;//用户自定义属性
        element.friendGroups;//用户的好友分组
        element.friendRemark;//用户备注
        element.userID;//此条记录用户id
        element.userProfile?.allowType; //用户的好友验证方式 0:允许所有人加我好友 1:不允许所有人加我好友 2:加我好友需我确认
        element.userProfile?.birthday; //用户生日
        element.userProfile?.customInfo; //用户的自定义状态
        element.userProfile?.faceUrl; //用户头像 url
        element.userProfile?.gender; //用户的性别 1:男 2:女
        element.userProfile?.level; //用户的等级
        element.userProfile?.nickName; //用户昵称
        element.userProfile?.role; //用户的角色
        element.userProfile?.selfSignature; //用户的签名
        element.userProfile?.userID; //用户 ID
      });
    }
```

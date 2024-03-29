---
description: 获取好友申请列表√
---

# getFriendApplicationList

## 功能介绍

获取好友申请列表

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回值

```dart
V2TimValueCallback<V2TimFriendApplicationResult>

{
    code : int
    desc : String
    data : {
        friendApplicationList : List<V2TimFriendApplication>//好友申请列表
        unreadCount : int//未读申请数量
    }
}
```

## 返回值详解

| 名称   | 数值类型                                                                                  | 描述                                                             |
| ---- | ------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                                   | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                                | 请求结果描述                                                         |
| data | [V2TimFriendApplicationResult](../keyClass/user/v2timfriendapplicationresult.md) | 好友申请列表信息                                                       |

## 代码示例

```dart
    //获取好友申请列表
    V2TimValueCallback<V2TimFriendApplicationResult>
        getFriendApplicationListRes = await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .getFriendApplicationList();
    if (getFriendApplicationListRes.code == 0) {
      // 查询成功
      getFriendApplicationListRes.data?.unreadCount;//未读申请数量
      getFriendApplicationListRes.data?.friendApplicationList
          ?.forEach((element) {
        element?.addSource;//申请添加来源 flutter会在发出请求的source前添加AddSource_Type_
        element?.addTime;//申请时间
        element?.addWording;//申请添加的信息
        element?.faceUrl;//申请好友头像Url
        element?.nickname;//申请用户昵称
        element?.type;//申请好友类型
        element?.userID;//申请用户id
      });
    }
```

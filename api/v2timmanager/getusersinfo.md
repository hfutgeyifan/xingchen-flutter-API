---
description: 获取用户资料√
---

# getUsersInfo

## 功能介绍

获取用户资料

* 获取自己的资料，传入自己的 ID 即可。

{% hint style="info" %}
注意：

userIDList 建议一次最大 100 个，因为数量过多可能会导致数据包太大被后台拒绝，后台限制数据包最大为 1M。
{% endhint %}

## 参数详解

| 参数名称       | 参数类型           | 是否必填 | 描述          |
| ---------- | -------------- | ---- | ----------- |
| userIDList | List< String > | 是    | 需要查询的用户id列表 |

## 返回值

```dart
V2TimValueCallback<List<V2TimUserFullInfo>>

{
    code : int
    desc : String
    data : List<V2TimUserFullInfo>//查询到的用户资料列表
}
```

## 返回值详解

| 名称   | 数值类型                                                                    | 描述                                                             |
| ---- | ----------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                     | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                  | 请求结果描述                                                         |
| data | List< [V2TimUserFullInfo](../guan-jian-lei/user/v2timuserfullinfo.md) > | 查询到的用户资料列表                                                     |

## 代码示例  &#x20;

```dart
    //获取用户资料
    V2TimValueCallback<List<V2TimUserFullInfo>> getUsersInfoRes =
        await TencentImSDKPlugin.v2TIMManager.getUsersInfo(userIDList: []);//需要查询的用户id列表
    if (getUsersInfoRes.code == 0) {
      // 查询成功
      getUsersInfoRes.data?.forEach((element) {
        element.allowType;//用户的好友验证方式 0:允许所有人加我好友 1:不允许所有人加我好友 2:加我好友需我确认
        element.birthday;//用户生日
        element.customInfo;//用户的自定义状态 旗舰版支持修改此属性
        element.faceUrl;//用户头像 url
        element.gender;//用户的性别 1:男 2:女
        element.level;//用户的等级
        element.nickName;//用户昵称
        element.role;//用户的角色
        element.selfSignature;//用户的签名
        element.userID;//用户 ID
      });
    }
```

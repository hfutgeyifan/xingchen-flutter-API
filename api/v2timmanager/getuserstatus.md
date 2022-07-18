---
description: 获取用户在线状态
---

# getUserStatus

## API功能介绍

获取用户在线状态

{% hint style="info" %}
注意：

4.0.3版本开始支持

web不支持
{% endhint %}

## 参数详解

| 参数名称       | 参数类型           | 是否必填 | 描述                 |
| ---------- | -------------- | ---- | ------------------ |
| userIDList | List< String > | 是    |  需要查询用户在线状态的用户id列表 |

## 返回模板

```dart
V2TimValueCallback<List<V2TimUserStatus>>

{
    code : int
    desc : String
    data : List<V2TimUserStatus>//查询到的用户在线状态列表
}
```

## 返回参数详解

| 名称   | 数值类型                                        | 描述                                                             |
| ---- | ------------------------------------------- | -------------------------------------------------------------- |
| code | int                                         | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                      | 请求结果描述                                                         |
| data | List< [V2TimUserStatus](broken-reference) > | 查询到的用户在线状态列表                                                   |

## 使用案例  &#x20;

```dart
    //获取用户在线状态
    V2TimValueCallback<List<V2TimUserStatus>> getUserStatusRes =
        await TencentImSDKPlugin.v2TIMManager.getUserStatus(userIDList: []);// 需要查询用户在线状态的用户id列表
    if (getUserStatusRes.code == 0) {
      //查询成功
      getUserStatusRes.data?.forEach((element) {
        element.customStatus;//此条为此API查询的用户在线状态字段
        element.statusType;//用户在线状态类型 1:在线状态 2:离线状态 未登录（如主动调用 logout 接口，或者账号注册后还未登录）
        element.userID;//用户id
      });
    }
```

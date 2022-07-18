---
description: 获取登录用户的UserID
---

# getLoginUser

## API功能介绍

获取登录用户的UserID

* 在登录成功后，通过调用`getLoginUser`获取登录用户的UserID。
* 如果登录失败，获取的登录用户 UserID 为空。

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回模板

```dart
V2TimValueCallback<String>

{
    code : int
    desc : String
    data : String
}
```

## 返回参数详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |
| data | String | 登录用户的UserID                                                    |

## 使用案例  &#x20;

```dart
// 在用户登陆成功之后可调用
// 调用getLoginUser获取登录成功的用户 UserID
V2TimValueCallback<String> getLoginUserRes = await TencentImSDKPlugin.v2TIMManager.getLoginUser();
if(getLoginUserRes.code == 0){
  userID = getLoginUserRes.data;// getLoginUserRes.data为查询到的登录用户的UserID
}
```

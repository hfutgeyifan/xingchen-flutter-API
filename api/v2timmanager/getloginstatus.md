---
description: 获取登录状态
---

# getLoginStatus

## API功能介绍

获取登录状态

* 如果用户已经处于已登录和登录中状态，请勿再频繁调用登录接口登录。

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回模板

```dart
V2TimValueCallback<int>

{
    code : int
    desc : String
    data : int
}
```

## 返回参数详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |
| data | int    | 登录用户的UserID                                                    |

*   IM SDK 支持的登录状态，如下表所示：

    | 枚举值名称                  | 枚举类型描述 | 枚举值 |
    | ---------------------- | ------ | --- |
    | V2TIM\_STATUS\_LOGINED | 已登录    | 0   |
    | V2TIM\_STATUS\_LOGININ | 登录中    | 1   |
    | V2TIM\_STATUS\_LOGOUT  | 未登陆    | 2   |

## 使用案例  &#x20;

```dart
// 在用户登陆成功之后可调用
// 调用getLoginStatus获取登录成功的用户的状态
V2TimValueCallback<int> getLoginStatusRes = await TencentImSDKPlugin.v2TIMManager.getLoginStatus();
if(getLoginStatusRes.code == 0){
  int status = getLoginStatusRes.data;// getLoginStatusRes.data为用户登录状态值
  if(status == 0){
        // 已登录
  } else if(status == 1){
        // 登录中
  } else if(status == 2){
        // 未登录
  }
}
```

# callExperimentalAPI



## API功能介绍

用户登录

首次登录一个 IM 帐号时，不需要先注册这个帐号。在登录成功后，IM 自动完成这个帐号的注册。

您需要在以下场景调用 `login` 接口：

* App 启动后首次使用 IM SDK 的功能。
* 登录时票据过期：`login` 接口的回调会返回 `ERR_USER_SIG_EXPIRED（6206）` 或 `ERR_SVR_ACCOUNT_USERSIG_EXPIRED（70001）` 错误码，此时请您生成新的 userSig 重新登录。
* 在线时票据过期：用户在线期间也可能收到 `onUserSigExpired` 回调，此时需要您生成新的 userSig 并重新登录。
* 在线时被踢下线：用户在线情况下被踢，IM SDK 会通过 `onKickedOffline` 回调通知给您，此时可以在 UI 提示用户，并调用 `login` 重新登录。

以下场景无需调用 `login` 接口：

* 用户的网络断开并重新连接后，不需要调用 `login` 函数，IM SDK 会自动上线。
* 当一个登录过程在进行时，不需要进行重复登录。

{% hint style="info" %}
1\. 调用 IM SDK 接口成功登录后，将会开始计算 DAU，请根据业务场景合理调用登录接口，避免出现 DAU 过高的情况。

2\. 在一个 App 中，IM SDK 不支持多个帐号同时在线，如果同时登录多个帐号，只有最后登录的帐号在线。
{% endhint %}

## 参数详解

| 参数名称         | 参数类型                                        | 是否必填 | 描述                                                                                   |
| ------------ | ------------------------------------------- | ---- | ------------------------------------------------------------------------------------ |
| userID       | String                                      | 是    | 登录用户唯一标识                                                                             |
| logleuserSig | [LogLevelEString](../enums/loglevelenum.md) | 是    | 登录票据，计算方法请参考 [UserSig 后台 API](https://cloud.tencent.com/document/product/269/32688)。 |

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
String userID = "your user id";// 用户设置的userID
String userSig = "userSig from your server";// 用户计算出的userSig
V2TimCallback res = await TencentImSDKPlugin.v2TIMManager.login(userID: userID, userSig: userSig);
if(res.code == 0){
    // 登录成功逻辑    
}else{
     // 登录失败逻辑
}
```

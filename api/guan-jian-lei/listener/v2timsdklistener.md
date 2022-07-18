---
description: SDK的回调
---

# V2TimSDKListener

## 关键类描述

SDK的监听器回调

## 参数

### onConnectFailed

* 参数类型 : [ErrorCallback](https://pub.dev/documentation/tencent\_im\_sdk\_plugin\_platform\_interface/latest/enum\_callbacks/ErrorCallback.html)
* 参数描述：连接失败的回调函数

### onConnectSuccess

* 参数类型 : [VoidCallback](https://pub.dev/documentation/tencent\_im\_sdk\_plugin\_platform\_interface/latest/enum\_callbacks/VoidCallback.html)
* 参数描述：连接成功的回调函数

### onConnecting

* 参数类型 : [VoidCallback](https://pub.dev/documentation/tencent\_im\_sdk\_plugin\_platform\_interface/latest/enum\_callbacks/VoidCallback.html)
* 参数描述：正在连接的回调函数

### onKickedOffline

* 参数类型 : [VoidCallback](https://pub.dev/documentation/tencent\_im\_sdk\_plugin\_platform\_interface/latest/enum\_callbacks/VoidCallback.html)
* 参数描述：被踢下线的回调函数

### onSelfInfoUpdated

* 参数类型 : V2TimUserFullInfoCallback
* 参数描述：用户信息更新的回调函数

### onUserSigExpired

* 参数类型 : [VoidCallback](https://pub.dev/documentation/tencent\_im\_sdk\_plugin\_platform\_interface/latest/enum\_callbacks/VoidCallback.html)
* 参数描述：用户凭证过期的回调函数

### onUserStatusChanged

* 参数类型 : OnUserStatusChanged
* 参数描述：用户状态改变的回调函数

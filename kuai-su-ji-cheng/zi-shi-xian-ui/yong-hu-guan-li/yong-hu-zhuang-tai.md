## 功能描述

IMSDK 提供了用户状态管理的功能，每个用户拥有两种不同类型的状态：

* 普通状态。SDK 内置状态，客户无法直接修改。
* 自定义状态。客户自定义的状态，可以自行修改。利用自定义状态，您可以对该帐号设置诸如”听歌中“、”通话中“等一些自定义信息。

{% hint style="info" %}
说明：

用户状态针对的是当前用户，跟设备无关。如果有多台设备同时登录同一个账号，不支持按设备查询或者按设备设置状态。
{% endhint %}

用户的普通状态类型有以下三种：
* 在线（ONLINE）：当前用户已登录上线，可以正常收发消息。
* 离线（OFFLINE）：用户未主动调用 [`logout`](../../../api/v2timmanager/logout.md)退出登录，但长连接中断的状态。通常情况下，此时可以接收到离线推送的消息。
* 未登录（UNLOGINED）：用户注册账号后从未登录过，或者用户主动调用[`logout`](../../../api/v2timmanager/logout.md)退出登录。

关于离线状态，需要注意的是：
1. App 登录过程中杀进程或者网络异常中断（例如 4G/Wifi 切换、电梯信号弱等），此时账号会处于离线状态。
2. App 登录后按 Home 键进入后台，如果 App 进程被系统 kill，此时账号会处于离线状态。如果 App 进程处于后台保活，此时账号仍然是在线状态。
3. 在线/离线的状态切换，依赖于 IMSDK 与后台服务之间的 TCP 长连接。当客户端处于飞行模式、网络彻底中断或者某些设备厂商不支持时，可能会出现 TCP 协议的 FIN 包或 RST 包无法发出的现象，从而导致无法立即切换成离线状态。但由于后台服务接收不到心跳包，400 秒后依然会将当前用户状态设置为离线状态。

{% hint style="info" %}
注意：

- 下文所述的部分功能仅旗舰版客户支持，使用前请确认。
- 下文所述的部分功能需要在  [即时通信 IM 控制台](https://console.cloud.tencent.com/im) 打开对应的用户状态开关，使用前请确认。
{% endhint %}

[](id:set)

## 设置自己的自定义状态
您可以调用接口 [`setSelfStatus`](../../../api/v2timmanager/setselfstatus.md) 设置 `customStatus` 字段来设置自己的自定义状态。
如果您提前调用 [`initSDK`](../../../api/v2timmanager/initsdk.md) 添加了 SDK 监听器，设置成功后会触发 [`onUserStatusChanged`](../../../api/callbacks/onuserstatuschanged.md回调。详情请参见下文的 [状态变更通知](#状态变更通知)。

自定义状态清除机制：
1. 您可以在调用 [`setSelfStatus`](../../../api/v2timmanager/setselfstatus.md) 接口时，通过将 `customStatus` 字段设置为空来主动清除。
2. 当 SDK 监测到当前账号处于离线状态后，会自动清除自定义状态，此时也会触发状态变更通知。

{% hint style="info" %}
说明：

1. 调用 `setSelfStatus` 不需要升级到旗舰版，也无需开启控制台开关。
2. 本接口不做限频控制。
{% endhint %}

示例代码如下所示：

```dart
    //设置当前登录用户在线状态
    V2TimCallback setSelfStatusRes =
        await TencentImSDKPlugin.v2TIMManager.setSelfStatus(status: "");// 用户在线状态描述
    if (setSelfStatusRes.code == 0) {
      //设置成功
    }
```


[](id:get)
## 查询用户状态
您可以调用 [`getUserStatus`](../../../api/v2timmanager/getuserstatus.md)接口查询自己和其他用户的状态，接口会返回被查询者的普通状态和自定义状态。

[](id:getMyselfStatus)
### 查询自己的状态
设置 `userIDList` 仅包含自己的 userID，可查询自己的状态。

{% hint style="info" %}
说明：

1. 查询自己的状态不需要升级到旗舰版，也无需开启控制台开关。
2. 查询自己的状态不做接口限频控制。
{% endhint %}

[](id:getOthersStatus)
### 查询其他人的状态
设置 `userIDList` 为其他人的 userID 列表，可查询其他人的状态。

查询其他用户状态需要升级到旗舰版套餐，详情请参见 [基础服务详情](https://cloud.tencent.com/document/product/269/11673#.E5.9F.BA.E7.A1.80.E6.9C.8D.E5.8A.A1.E8.AF.A6.E6.83.85)。

查询其他用户状态需要提前在 [即时通信 IM 控制台](https://console.cloud.tencent.com/im) 开启 ”用户状态查询及状态变更通知“。如果开关关闭，调用 [`getUserStatus`](../../../api/v2timmanager/getuserstatus.md) 会报错。

![](https://qcloudimg.tencent-cloud.cn/raw/bae708cef66717ef0e1298a26cafff81.png)


{% hint style="info" %}
说明：

接口限频默认为 5 秒 20 次请求，单次查询最大用户数不超过 500 人。
{% endhint %}

示例代码：

```dart
    //获取用户在线状态
    V2TimValueCallback<List<V2TimUserStatus>> getUserStatusRes =
        await TencentImSDKPlugin.v2TIMManager.getUserStatus(userIDList: []);// 需要查询用户在线状态的用户id列表
    if (getUserStatusRes.code == 0) {
      //查询成功
      getUserStatusRes.data?.forEach((element) {
        element.customStatus;//此条为此API查询的用户在线状态字段
        element.statusType;//用户在线状态类型 1:在线状态 2:离线状态 3:未登录（如主动调用 logout 接口，或者账号注册后还未登录）
        element.userID;//用户id
      });
    }
```


[](id:subscribe)
## 订阅用户状态
您可以调用接口 [`subscribeUserStatus`](../../../api/v2timmanager/subscribeuserstatus.md)订阅指定用户的状态。IM SDK 默认只支持订阅 200 个用户，当超过限制后，会淘汰掉最早订阅的用户。
当您所订阅的用户状态变更时（包括普通状态和自定义状态），您可以在 [`onUserStatusChanged`](../../../api/callbacks/onuserstatuschanged.md)回调中收到该用户的状态变更通知。

接口特性：

1. 该接口不支持订阅自己的状态。如果您想感知自己的状态变更，可直接监听 [`onUserStatusChanged`](../../../api/callbacks/onuserstatuschanged.md) 回调。详情请参见下文的 [状态变更通知](#状态变更通知)。

2. 该接口支持订阅好友的状态，但是订阅好友也会占用上述 200 个用户的名额。
   * 如果您关心所有好友的状态，不需要调用本接口，直接在 [即时通信 IM 控制台](https://console.cloud.tencent.com/im) 开启好友状态自动通知开关，开启后可以在 [`onUserStatusChanged`](../../../api/callbacks/onuserstatuschanged.md) 回调中收到所有好友的状态变更通知。
   
   * 如果您仅关心部分好友的状态，只能调用 [`subscribeUserStatus`](../../../api/v2timmanager/subscribeuserstatus.md) 主动订阅。订阅后可以在 [`onUserStatusChanged`](../../../api/callbacks/onuserstatuschanged.md) 回调中所订阅的好友的状态变更通知。

     好友状态自动通知开关如下图所示：
     ![](https://qcloudimg.tencent-cloud.cn/raw/6606efe486b2a3e7a57620f2f7b5b703.png)

订阅用户状态需要升级到旗舰版套餐，详情请参见 [基础服务详情](https://cloud.tencent.com/document/product/269/11673#.E5.9F.BA.E7.A1.80.E6.9C.8D.E5.8A.A1.E8.AF.A6.E6.83.85)。

订阅用户状态需要提前在 [即时通信 IM 控制台](https://console.cloud.tencent.com/im) 开启 ”用户状态查询及状态变更通知“。如果开关关闭，调用 [`subscribeUserStatus`](../../../api/v2timmanager/subscribeuserstatus.md)会报错。
![](https://qcloudimg.tencent-cloud.cn/raw/bae708cef66717ef0e1298a26cafff81.png)

{% hint style="info" %}
说明：

接口限频默认为 5 秒 20 次请求，单次查询最大用户数不超过 500 人。
{% endhint %}

示例代码如下所示：

```dart
    //订阅用户状态
    V2TimCallback subscribeUserStatusRes = await TencentImSDKPlugin.v2TIMManager
        .subscribeUserStatus(userIDList: []);// 订阅的用户id列表
    if (subscribeUserStatusRes.code == 0) {
      // 订阅成功
    }
```

[](id:unsubscribe)
## 取消订阅用户状态
如果您不想接收用户的状态变更通知，您可以调用接口 [`unsubscribeUserStatus`](../../../api/v2timmanager/unsubscribeuserstatus.md)取消订阅用户的状态或清空订阅列表。
如果您不想主动清空订阅列表，当帐号离线或者退出登录后，IMSDK 默认延迟一段时间后自动清空订阅列表。

取消订阅用户状态需要升级到旗舰版套餐，详情请参见 [基础服务详情](https://cloud.tencent.com/document/product/269/11673#.E5.9F.BA.E7.A1.80.E6.9C.8D.E5.8A.A1.E8.AF.A6.E6.83.85)。

取消订阅用户状态需要提前在 [即时通信 IM 控制台](https://console.cloud.tencent.com/im) 开启 ”用户状态查询及状态变更通知“。如果开关关闭，调用 [`unsubscribeUserStatus`](../../../api/v2timmanager/unsubscribeuserstatus.md) 会报错。
![](https://qcloudimg.tencent-cloud.cn/raw/bae708cef66717ef0e1298a26cafff81.png)

{% hint style="info" %}
说明：

接口限频默认为 5 秒 20 次请求，单次查询最大用户数不超过 500 人。
{% endhint %}

示例代码如下所示：

```dart
    //取消订阅用户状态
    V2TimCallback unsubscribeUserStatusRes = await TencentImSDKPlugin.v2TIMManager
        .unsubscribeUserStatus(userIDList: []);// 取消订阅的用户id列表
    if (unsubscribeUserStatusRes.code == 0) {
      // 取消订阅成功
    }
```

[](id:notify)
## 状态变更通知
根据您希望感知用户状态的用户类型，可以将状态变更分为 3 种类型：
1. 感知自己的状态变更。
2. 感知好友的状态变更。
3. 感知用户（非好友）的状态变更。

上述 3 种方式的状态变更通知，都是通过 [`onUserStatusChanged`](../../../api/callbacks/onuserstatuschanged.md)回调出来。
虽然状态通知都通过 [`onUserStatusChanged`](../../../api/callbacks/onuserstatuschanged.md) 抛出，但不同类型的用户触发该通知的方式不同。

### 自己的状态变更通知
如果您提前调用 [`init`](../../../api/v2timmanager/initsdk.md) 添加了 SDK 监听器，设置成功后会，当自己的状态发生变更时，会触发 [`onUserStatusChanged`](../../../api/callbacks/onuserstatuschanged.md) 回调，您可以在其中获取到自己的最新状态。

### 好友的状态变更通知
1. 如果您在 [即时通信 IM 控制台](https://console.cloud.tencent.com/im) 开启了好友状态自动通知，那么当好友的状态发生变更时，会自动触发 [`onUserStatusChanged`](../../../api/callbacks/onuserstatuschanged.md) 回调，您可以在其中获取到好友的最新状态。

2. 如果您没有开启好友状态自动通知，并且仍然想感知好友的状态变更，您需要调用 [`subscribeUserStatus`](../../../api/v2timmanager/subscribeuserstatus.md) 主动订阅好友的状态。当好友的状态发生变更时，会自动触发 [`onUserStatusChanged`](../../../api/callbacks/onuserstatuschanged.md) 回调。


{% hint style="info" %}
注意：

[`subscribeUserStatus`](../../../api/v2timmanager/subscribeuserstatus.md) 仅旗舰版客户支持，并且需要开启控制台开关。详情请参见上文的 [订阅用户状态](#订阅用户状态)。
{% endhint %}

1. 如果您既没有开启好友状态自动通知，也没有调用 [`subscribeUserStatus`](../../../api/v2timmanager/subscribeuserstatus.md) 主动订阅好友状态，那么当好友状态发生变更时，您将无法感知到。

### 普通用户（非好友）的状态变更
如果您希望感知普通用户（非好友）的状态变更，只能调用 [`subscribeUserStatus`](../../../api/v2timmanager/subscribeuserstatus.md) 主动订阅。当该用户状态发生变更时，会触发 [`onUserStatusChanged`](../../../api/callbacks/onuserstatuschanged.md) 回调，您可以在其中获取到其最新状态。

{% hint style="info" %}
注意：

[`subscribeUserStatus`](../../../api/v2timmanager/subscribeuserstatus.md) 仅旗舰版客户支持，并且需要开启控制台开关。详情请参见上文的 [订阅用户状态](#订阅用户状态)。
{% endhint %}

示例代码如下：

```dart
    // 1. 从即时通信 IM 控制台获取应用 SDKAppID。
    int sdkAppID = 0;
    // 2. 添加 V2TimSDKListener 的事件监听器，sdkListener 是 V2TimSDKListener 的实现类
    V2TimSDKListener sdkListener = V2TimSDKListener(
      onUserStatusChanged: (List<V2TimUserStatus> userStatusList) {
        //用户状态变更通知
        //userStatusList 用户状态变化的用户列表
        //收到通知的情况：订阅过的用户发生了状态变更（包括在线状态和自定义状态），会触发该回调
        //在 IM 控制台打开了好友状态通知开关，即使未主动订阅，当好友状态发生变更时，也会触发该回调
        //同一个账号多设备登录，当其中一台设备修改了自定义状态，所有设备都会收到该回调
      },
    );
    // 3.初始化SDK
    V2TimValueCallback<bool> initSDKRes =
        await TencentImSDKPlugin.v2TIMManager.initSDK(
      sdkAppID: sdkAppID, // SDKAppID
      loglevel: LogLevelEnum.V2TIM_LOG_ALL, // 日志登记等级
      listener: sdkListener, // 事件监听器
    );
    if (initSDKRes.code == 0) {
      //初始化成功
    }
```
{% hint style="info" %}
注意：

除了上述通过 [`onUserStatusChanged`](../../../api/callbacks/onuserstatuschanged.md) 得知用户状态以外，您还可以主动查询用户状态，详情请参见上文 [查询用户状态](#查询用户状态)。
{% endhint %}

### 状态变更通知多端同步
如果您开启了多端登录（详情请参见 [多端登录](https://cloud.tencent.com/document/product/269/38656#.E7.99.BB.E5.BD.95.E8.AE.BE.E7.BD.AE))，同一个帐号可以在不同设备上登录。当其中一个设备上所登录的用户的状态发生变更时，后台会给其他登录的设备也下发 [`onUserStatusChanged`](../../../api/callbacks/onuserstatuschanged.md)通知。

[](id:limit)

## 接口限制

### 套餐包限制
* [`setSelfStatus`](../../../api/v2timmanager/setselfstatus.md) 接口不限制旗舰版。
* [`getUserStatus`](../../../api/v2timmanager/getuserstatus.md) 查询自己的状态，不限制旗舰版。
* [`getUserStatus`](../../../api/v2timmanager/getuserstatus.md) 除了查询自己外的其他能力，均需要升级到旗舰版。
* [`subscribe`](../../../api/v2timmanager/subscribeuserstatus.md) / [`unsubscribe`](../../../api/v2timmanager/unsubscribeuserstatus.md) 接口的所有能力，均需要升级到旗舰版


### 接口限频
* [`setSelfStatus`](../../../api/v2timmanager/setselfstatus.md) 接口不限频。
* [`getUserStatus`](../../../api/v2timmanager/getuserstatus.md) 查询自己的状态，不限频。
* [`getUserStatus`](../../../api/v2timmanager/getuserstatus.md) 除了查询自己的状态外，默认限制 5 秒 20 次请求，单次查询最大用户数不超过 500。
* [`subscribe`](../../../api/v2timmanager/subscribeuserstatus.md) 接口，默认限制 5 秒 20 次请求，单次订阅最大用户数不超过 100。
* [`unsubscribe`](../../../api/v2timmanager/unsubscribeuserstatus.md) 接口，默认限制 5 秒 20 次请求，单次取消订阅最大用户数不超过 100。



## 常见问题

### 调用订阅/取消订阅接口时，接口提示 ”72001“ 的错误码

72001 错误码表示在控制台上并没有开启对应的能力，请登录  [即时通信 IM 控制台](https://console.cloud.tencent.com/im)  打开对应的功能开关。

![](https://qcloudimg.tencent-cloud.cn/raw/bae708cef66717ef0e1298a26cafff81.png)

## 交流与反馈

欢迎加入 QQ 群进行技术交流和反馈问题。

<img src="https://qcloudimg.tencent-cloud.cn/raw/960ce9d76ea2cebffcb7629741279b90.png" alt="" style="zoom:50%;" />

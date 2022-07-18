---
description: 修改个人资料
---

# setSelfInfo

## API功能介绍

修改个人资料

* 资料修改成功后，您会收到 `onSelfInfoUpdated` 回调。

## 参数详解

| 参数名称         | 参数类型                                                            | 是否必填 | 描述         |
| ------------ | --------------------------------------------------------------- | ---- | ---------- |
| userFullInfo | [V2TimUserFullInfo](../guan-jian-lei/user/v2timuserfullinfo.md) | 是    | 需要修改的用户的信息 |

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
    //用户资料设置信息
    V2TimUserFullInfo userFullInfo = V2TimUserFullInfo(
      allowType: 0,//用户的好友验证方式 0:允许所有人加我好友 1:不允许所有人加我好友 2:加我好友需我确认
      birthday: 0,//用户生日
      customInfo: {"custom":"custom"},//用户的自定义状态
      faceUrl: "",//用户头像 url
      gender: 1,//用户的性别 1:男 2:女
      level: 0,//用户的等级
      role: 0,//用户的角色
      selfSignature: "",//用户的签名
      userID: "",//用户 ID
    );
    V2TimCallback setSelfInfoRes =
        await TencentImSDKPlugin.v2TIMManager.setSelfInfo(userFullInfo: userFullInfo);//用户资料设置信息
    if (setSelfInfoRes.code == 0) {
      // 修改成功
    }
```
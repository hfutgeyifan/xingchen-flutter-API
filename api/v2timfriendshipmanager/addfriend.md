---
description: 添加好友√
---

# addFriend

## 功能介绍

添加好友

根据对方用户资料中的加好友需要验证与否，可以分为两种处理流程：

**第一种：加好友不需要对方验证**

1. 用户 A 和 B 调用 [`setFriendListener`](setfriendlistener.md) 设置关系链监听器。
2. 用户 B 通过 [`setSelfInfo`](../v2timmanager/setselfinfo.md) 函数里的 `allowType` 字段设置为加好友不需要验证（`V2TIM_FRIEND_ALLOW_ANY`）。
3. 用户 A 调用 `addFriend` 申请添加 B 为好友即可添加成功。添加成功后，按照申请参数 `addType` 的设置有两种情况：
   * 如果设置为双向好友 (`V2TIM_FRIEND_TYPE_BOTH`) ，则用户 A 和 B 都会收到 [`onFriendListAdded`](../callbacks/onfriendlistaddedcallback.md) 回调；
   * 如果设置为单向好友（`V2TIM_FRIEND_TYPE_SINGLE`），则只有用户 A 收到 [`onFriendListAdded`](../callbacks/onfriendlistaddedcallback.md) 回调。

**第二种：加好友需要通过对方验证**

1. 用户 A 和 B 调用 [`setFriendListener`](setfriendlistener.md) 设置关系链监听。
2. 用户 B 通过 [`setSelfInfo`](../v2timmanager/setselfinfo.md) 函数里的 `allowType` 字段设置为加好友需要验证（`V2TIM_FRIEND_NEED_CONFIRM`）。
3. 用户 A 调用 `addFriend` 申请添加 B 为好友，接口的成功回调参数中 `resultCode` 返回 30539，表示需要等待用户 B 的验证。同时 A 和 B 都会收到 [`onFriendApplicationListAdded`](../callbacks/onfriendapplicationlistaddedcallback.md) 的回调。
4. 用户 B 会收到 [`onFriendApplicationListAdded`](../callbacks/onfriendapplicationlistaddedcallback.md) 的回调，当参数  `type` 为 `V2TIM_FRIEND_APPLICATION_COME_IN` 时，可以选择接受或者拒绝：
   * B 调用 [`acceptFriendApplication`](acceptfriendapplication.md) 接受好友请求。如果参数接受类型为仅同意加单向好友（`V2TIM_FRIEND_ACCEPT_AGREE`）时:
     * A 会收到 [`onFriendListAdded`](../callbacks/onfriendlistaddedcallback.md) 回调，说明单向加好友成功。
     * B 会收到 [`onFriendApplicationListDeleted`](../callbacks/onfriendapplicationlistdeletedcallback.md) 回调，此时 B 成为 A 的好友，但 A 仍不是 B 的好友。
   * B 调用 [`acceptFriendApplication`](acceptfriendapplication.md) 接受好友请求，如果参数接受类型为同意加双向好友时（`V2TIM_FRIEND_ACCEPT_AGREE_AND_ADD`），A 和 B 都会收到 [`onFriendListAdded`](../callbacks/onfriendlistaddedcallback.md) 回调，说明互相加好友成功。
   * B 调用 [`refuseFriendApplication`](refusefriendapplication.md) 拒绝好友请求，双方都会收到 [`onFriendApplicationListDeleted`](../callbacks/onfriendapplicationlistdeletedcallback.md) 回调。

## 参数详解

| 参数名称        | 参数类型                                         | 是否必填 | 描述           |
| ----------- | -------------------------------------------- | ---- | ------------ |
| userID      | String                                       | 是    | 需要添加的用户id    |
| remark      | String                                       | 否    | 添加的好友的好友备注   |
| friendGroup | String                                       | 否    | 添加好友所在分组     |
| addWording  | String                                       | 否    | 添加好友附带信息     |
| addSource   | String                                       | 否    | 添加来源描述       |
| addType     | [FriendTypeEnum](../enums/friendtypeenum.md) | 是    | 设置加好友类型，默认双向 |

## 返回值

```dart
V2TimValueCallback<V2TimFriendOperationResult>

{
    code : int
    desc : String
    data : {
        resultCode : int//添加操作请求错误码
        resultInfo : String//添加操作请求结果描述
        userID : String//用户id
    }
}
```

## 返回值详解

| 名称   | 数值类型                                                                              | 描述                                                             |
| ---- | --------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                               | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                            | 请求结果描述                                                         |
| data | [V2TimFriendOperationResult](../guan-jian-lei/user/v2timfriendoperationresult.md) | 添加请求结果                                                         |

## 代码示例

```dart
    //添加好友
    V2TimValueCallback<V2TimFriendOperationResult> addFriendRes =
        await TencentImSDKPlugin.v2TIMManager.getFriendshipManager().addFriend(
              userID: "userID", //需要添加的用户id
              remark: "", //添加的好友的好友备注
              friendGroup: "", //添加好友所在分组
              addWording: "", //添加好友附带信息
              addSource: "", //添加来源描述
              addType: FriendTypeEnum.V2TIM_FRIEND_TYPE_BOTH, //设置加好友类型，默认双向
            );
    if (addFriendRes.code == 0) {
      // 添加请求发送成功
      addFriendRes.data?.resultCode; //添加结果错误码
      addFriendRes.data?.resultInfo; //添加结果描述
      addFriendRes.data?.userID; //被添加的用户id
    }
```

---
description: 获取指定的群成员资料
---

# getGroupMembersInfo

## API功能介绍

获取指定的群成员资料

* 该接口支持批量获取，您可以一次传入多个 `userID` 获取多个群成员的资料，从而提升网络传输效率。

## 参数详解

| 参数名称       | 参数类型           | 是否必填 | 描述          |
| ---------- | -------------- | ---- | ----------- |
| groupID    | String         | 是    | 需要查询的群组id   |
| memberList | List< String > | 是    | 需要查询的用户id列表 |

## 返回模板

```dart
V2TimValueCallback<List<V2TimGroupMemberFullInfo>>

{
    code : int
    desc : String
    data : List<V2TimGroupMemberFullInfo>// 查询到的用户信息列表
}
```

## 返回参数详解

| 名称   | 数值类型                                                 | 描述                                                             |
| ---- | ---------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                  | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                               | 请求结果描述                                                         |
| data | List< [V2TimGroupMemberFullInfo](broken-reference) > | 查询到的用户信息列表                                                     |

## 使用案例  &#x20;

```dart
    // 获取指定的群成员资料
    V2TimValueCallback<List<V2TimGroupMemberFullInfo>> getGroupMembersInfoRes =
        await TencentImSDKPlugin.v2TIMManager
            .getGroupManager()
            .getGroupMembersInfo(
      groupID: "groupID", // 需要获取的群组id
      memberList: [], // 需要获取的用户id列表
    );
    if (getGroupMembersInfoRes.code == 0) {
      // 获取成功
      getGroupMembersInfoRes.data?.forEach((element) {
        element.customInfo;// 群成员自定义属性
        element.faceUrl;// 群成员头像Url
        element.friendRemark;// 群成员好友备注
        element.joinTime;// 群成员加群时间
        element.muteUntil;// 群成员禁言时间
        element.nameCard;// 群成员名片
        element.nickName;// 群成员的昵称
        element.role;// 群成员在此群的角色
        element.userID;// 群成员的id
      });
    }

```

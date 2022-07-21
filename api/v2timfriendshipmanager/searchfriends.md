---
description: 搜索好友√
---

# searchFriends

## 功能介绍

搜索好友

* 接口返回本地存储的用户资料，可以根据 [V2TIMFriendInfoResult](../guan-jian-lei/user/v2timfriendinforesult.md) 中的 relation 来判断是否为好友。

## 参数详解

| 参数名称        | 参数类型                                                                      | 是否必填 | 描述        |
| ----------- | ------------------------------------------------------------------------- | ---- | --------- |
| searchParam | [V2TimFriendSearchParam](../guan-jian-lei/user/v2timfriendsearchparam.md) | 是    | 搜索好友的搜索条件 |

## 返回值

```dart
V2TimValueCallback<List<V2TimFriendInfoResult>>

{
    code : int
    desc : String
    data : List<V2TimFriendInfoResult>//查询到的结果信息
}
```

## 返回值详解

| 名称   | 数值类型                                                                            | 描述                                                             |
| ---- | ------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                                             | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                                          | 请求结果描述                                                         |
| data | List< [V2TimFriendInfoResult](../guan-jian-lei/user/v2timfriendinforesult.md) > | 查询到的结果信息                                                       |

## 代码示例

```dart
    //搜索好友的搜索条件
    V2TimFriendSearchParam searchParam = V2TimFriendSearchParam(
      isSearchNickName: true,//是否搜索昵称
      isSearchRemark: true,//是否搜索备注
      isSearchUserID: true,//是否搜索id
      keywordList: [],//关键字列表，最多支持5个。
    );
    V2TimValueCallback<List<V2TimFriendInfoResult>> searchFriendsRes =
        await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .searchFriends(searchParam: searchParam); //搜索好友的搜索条件
    if (searchFriendsRes.code == 0) {
      // 查询成功
      searchFriendsRes.data?.forEach((element) {
        element.relation; //好友类型 0:不是好友 1:对方在我的好友列表中 2:我在对方的好友列表中 3:互为好友
        element.resultCode; //此条记录的查询结果错误码
        element.resultInfo; //此条查询结果描述
        //friendInfo为好友个人资料，如果不是好友，除了 userID 字段，其他字段都为空
        element.friendInfo
            ?.friendCustomInfo; //好友自定义字段 首先要在 控制台 (功能配置 -> 好友自定义字段) 配置好友自定义字段，然后再调用接口进行设置
        element.friendInfo?.friendGroups; //好友所在分组列表
        element.friendInfo?.friendRemark; //好友备注
        element.friendInfo?.userID; //用户的id
        element.friendInfo?.userProfile
            ?.allowType; //用户的好友验证方式 0:允许所有人加我好友 1:不允许所有人加我好友 2:加我好友需我确认
        element.friendInfo?.userProfile?.birthday; //用户生日
        element.friendInfo?.userProfile?.customInfo; //用户的自定义状态
        element.friendInfo?.userProfile?.faceUrl; //用户头像 url
        element.friendInfo?.userProfile?.gender; //用户的性别 1:男 2:女
        element.friendInfo?.userProfile?.level; //用户的等级
        element.friendInfo?.userProfile?.nickName; //用户昵称
        element.friendInfo?.userProfile?.role; //用户的角色
        element.friendInfo?.userProfile?.selfSignature; //用户的签名
        element.friendInfo?.userProfile?.userID; //用户 ID
      });
    }
```

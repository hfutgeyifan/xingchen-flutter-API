---
description: 搜索群成员
---

# searchGroupMembers

## API功能介绍

搜索群成员

* SDK 会在本地搜索指定群 ID 列表中，群成员信息（名片、好友备注、昵称、userID）包含于关键字列表 keywordList 的所有群成员并返回群 ID 和群成员列表的 map，关键字列表最多支持5个。

{% hint style="info" %}
注意：

web 不支持搜索
{% endhint %}

## 参数详解

| 参数名称  | 参数类型                                                                      | 是否必填 | 描述         |
| ----- | ------------------------------------------------------------------------- | ---- | ---------- |
| param | [V2TimGroupMemberSearchParam](../../class/v2timgroupmembersearchparam.md) | 是    | 搜索群成员的搜索参数 |

## 返回模板

```dart
V2TimValueCallback<V2GroupMemberInfoSearchResult>

{
    code : int
    desc : String
    data : {
        groupMemberSearchResultItems :  Map<String, dynamic>// 群成员搜索结果
    }
}
```

## 返回参数详解

| 名称    | 数值类型                                                                                     | 描述                                                             |
| ----- | ---------------------------------------------------------------------------------------- | -------------------------------------------------------------- |
| code  | int                                                                                      | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc  | String                                                                                   | 请求结果描述                                                         |
| data  | [V2GroupMemberInfoSearchResult](../guan-jian-lei/group/v2groupmemberinfosearchresult.md) | 群成员搜索结果                                                        |

## 使用案例  &#x20;

```dart
    //搜索参数设置
    V2TimGroupMemberSearchParam param = V2TimGroupMemberSearchParam(
        groupIDList: [],// 指定群 ID 列表，若为 null 则搜索全部群中的群成员
        isSearchMemberNameCard: true,// 设置是否搜索群成员名片，默认为true
        isSearchMemberRemark: true,// 设置是否搜索群成员备注，默认为true
        isSearchMemberNickName: true,// 设置是否搜索群成员昵称，默认为true
        isSearchMemberUserID: true,// 设置是否搜索群成员 userID，默认为true
        keywordList: []);// 搜索关键字列表，最多支持5个
    //搜索群成员
    V2TimValueCallback<V2GroupMemberInfoSearchResult> searchGroupMembersRes =
        await TencentImSDKPlugin.v2TIMManager
            .getGroupManager()
            .searchGroupMembers(param: param); // 搜索群成员的搜索参数
    if (searchGroupMembersRes.code == 0) {
      // 搜索成功
      searchGroupMembersRes.data?.groupMemberSearchResultItems;// 群成员搜索结果
    }

```

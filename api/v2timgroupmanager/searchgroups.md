---
description: 搜索群资料
---

# searchGroups

## API功能介绍

搜索群资料

* SDK 会搜索群名称包含于关键字列表 keywordList 的所有群并返回群信息列表。关键字列表最多支持5个。

{% hint style="info" %}
注意：

web 不支持关键字搜索搜索, 请使用searchGroupByID
{% endhint %}

## 参数详解

| 参数名称        | 参数类型                                      | 是否必填 | 描述       |
| ----------- | ----------------------------------------- | ---- | -------- |
| searchParam | [V2TimGroupSearchParam](broken-reference) | 是    | 搜索群的搜索参数 |

## 返回模板

```dart
V2TimValueCallback<List<V2TimGroupInfo>>

{
    code : int
    desc : String
    data : List<V2TimGroupInfo>// 搜索到的群消息列表
}
```

## 返回参数详解

| 名称    | 数值类型                                       | 描述                                                             |
| ----- | ------------------------------------------ | -------------------------------------------------------------- |
| code  | int                                        | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc  | String                                     | 请求结果描述                                                         |
| data  | List< [V2TimGroupInfo](broken-reference) > | 搜索到的群消息列表                                                      |

## 使用案例  &#x20;

```dart
    // 搜索群资料的搜索设置
    V2TimGroupSearchParam param = V2TimGroupSearchParam(
        isSearchGroupID: true,//设置是否搜索群 ID，默认为true
        isSearchGroupName: true, // 设置是否搜索群名称，默认为true
        keywordList: []);// 搜索关键字列表，最多支持5个。
    // 搜索群资料
    V2TimValueCallback<List<V2TimGroupInfo>> searchGroupsRes =
        await TencentImSDKPlugin.v2TIMManager
            .getGroupManager()
            .searchGroups(searchParam: param);// 搜索群资料的搜索设
    if (searchGroupsRes.code == 0) {
      // 搜索成功
      searchGroupsRes.data?.forEach((element) {
        element.customInfo; // 群自定义字段
        element.faceUrl; // 群头像Url
        element.groupAddOpt; // 群添加选项设置
        element.groupID; // 群ID
        element.groupName; // 群名
        element.groupType; // 群类型
        element.introduction; // 群介绍
        element.isAllMuted; // 群是否全体禁言
        element.isSupportTopic; // 群是否支持话题
        element.joinTime; // 当前用户在此群的加入时间
        element.lastInfoTime; // 最后一次群修改资料的时间
        element.lastMessageTime; // 最后一次群发消息的时间
        element.memberCount; // 群员数量
        element.notification; // 群公告
        element.onlineCount; // 群在线人数
        element.owner; // 群主
        element.recvOpt; // 当前用户在此群中接受信息的选项
        element.role; // 此用户在群中的角色
      });
    }

```

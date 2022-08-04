---
description: 通过 groupID 搜索群组
---

# searchGroupByID

## 功能介绍

通过 groupID 搜索群组

{% hint style="info" %}
注意：

好友工作群不能被搜索

仅 web 支持该搜索方式
{% endhint %}

## 参数详解

| 参数名称    | 参数类型   | 是否必填 | 描述         |
| ------- | ------ | ---- | ---------- |
| groupID | String | 是    | 需要查询的群组 ID |

## 返回值

```dart
V2TimValueCallback<V2TimGroupInfo>

{
    code : int
    desc : String
    data : {
        groupID : String// 群组 ID
        groupType : String// 群组类型
        groupName : String// 群组名称
        notification : String// 群组公告
        introduction : String// 群组介绍
        faceUrl : String// 群组头像Url
        isAllMuted : bool// 群组是否全员禁言
        isSupportTopic : bool// 群组是否支持话题
        owner : String// 群主
        createTime : int//群组创建时间
        groupAddOpt : int //加群是否需要管理员审批，工作群（Work）不能主动加入，不支持此设置项
        lastInfoTime : int//群最近一次群资料修改时间
        lastMessageTime : int// 群最近一次发消息时间
        memberCount : int//已加入的群成员数量
        onlineCount : int//在线的群成员数量
        role : int//当前用户在此群组中的角色（V2TIMGroupMemberRole）
        recvOpt : int//当前用户在此群组中的消息接收选项
        joinTime : int//当前用户在此群中的加入时间，不支持设置，系统自动生成
        customInfo : Map<String, String>//群自定义字段
    }
}
```

## 返回值详解

| 名称   | 数值类型                                                              | 描述                                                             |
| ---- | ----------------------------------------------------------------- | -------------------------------------------------------------- |
| code | int                                                               | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                            | 请求结果描述                                                         |
| data | List< [V2TimGroupInfo](../keyClass/group/v2timgroupinfo.md)> | 查询到的群组信息                                                       |

## 代码示例

```dart
    //通过 groupID 搜索群组
    V2TimValueCallback<V2TimGroupInfo> searchGroupByIDRes =
        await TencentImSDKPlugin.v2TIMManager
            .getGroupManager()
            .searchGroupByID(groupID: ""); // 需要查询的群组id列表
    if (searchGroupByIDRes.code == 0) {
      // 查询成功
      searchGroupByIDRes.data?.createTime; // 群创建时间
      searchGroupByIDRes.data?.customInfo; // 群自定义字段
      searchGroupByIDRes.data?.faceUrl; // 群头像Url
      searchGroupByIDRes.data?.groupAddOpt; // 群添加选项设置
      searchGroupByIDRes.data?.groupID; // 群ID
      searchGroupByIDRes.data?.groupName; // 群名
      searchGroupByIDRes.data?.groupType; // 群类型
      searchGroupByIDRes.data?.introduction; // 群介绍
      searchGroupByIDRes.data?.isAllMuted; // 群是否全体禁言
      searchGroupByIDRes.data?.isSupportTopic; // 群是否支持话题
      searchGroupByIDRes.data?.joinTime; // 当前用户在此群的加入时间
      searchGroupByIDRes.data?.lastInfoTime; // 最后一次群修改资料的时间
      searchGroupByIDRes.data?.lastMessageTime; // 最后一次群发消息的时间
      searchGroupByIDRes.data?.memberCount; // 群员数量
      searchGroupByIDRes.data?.notification; // 群公告
      searchGroupByIDRes.data?.onlineCount; // 群在线人数
      searchGroupByIDRes.data?.owner; // 群主
      searchGroupByIDRes.data?.recvOpt; // 当前用户在此群中接受信息的选项
      searchGroupByIDRes.data?.role; // 此用户在群中的角色
    }
```

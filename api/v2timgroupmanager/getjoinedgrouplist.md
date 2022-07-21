---
description: 获取当前用户已经加入的群列√
---

# getJoinedGroupList

## 功能介绍

获取当前用户已经加入的群列

{% hint style="info" %}
注意：直播群（AVChatRoom）和 社群（Community，**支持**话题的社群）不包含在此列表中。

该接口有频限检测，SDK 限制调用频率为1 秒 10 次，超过限制后会报 ERR\_SDK\_COMM\_API\_CALL\_FREQUENCY\_LIMIT （7008）错误
{% endhint %}

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回值

```dart
V2TimValueCallback<List<V2TimGroupInfo>>

{
    code : int
    desc : String
    data : List<V2TimGroupInfo>
}
```

## 返回值详解

| 名称   | 数值类型                                                               | 描述                                                             |
| ---- | ------------------------------------------------------------------ | -------------------------------------------------------------- |
| code | int                                                                | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                                             | 请求结果描述                                                         |
| data | List< [V2TimGroupInfo](../guan-jian-lei/group/v2timgroupinfo.md) > | 查询到的群组列表                                                       |

## 代码示例

```dart
    //获取当前用户已经加入的群列
    V2TimValueCallback<List<V2TimGroupInfo>> getJoinedGroupListRes =
        await TencentImSDKPlugin.v2TIMManager
            .getGroupManager()
            .getJoinedGroupList();
    if (getJoinedGroupListRes.code == 0) {
      // 查询成功
      getJoinedGroupListRes.data?.forEach((element) {
        element.createTime;// 群创建时间
        element.customInfo;// 群自定义字段
        element.faceUrl;// 群头像Url
        element.groupAddOpt;// 群添加选项设置
        element.groupID;// 群ID
        element.groupName;// 群名
        element.groupType;// 群类型
        element.introduction;// 群介绍
        element.isAllMuted;// 群是否全体禁言
        element.isSupportTopic;// 群是否支持话题
        element.joinTime;// 当前用户在此群的加入时间
        element.lastInfoTime;// 最后一次群修改资料的时间
        element.lastMessageTime;// 最后一次群发消息的时间
        element.memberCount;// 群员数量
        element.notification;// 群公告
        element.onlineCount;// 群在线人数
        element.owner;// 群主
        element.recvOpt;// 当前用户在此群中接受信息的选项
        element.role;// 此用户在群中的角色
      });
    }
```

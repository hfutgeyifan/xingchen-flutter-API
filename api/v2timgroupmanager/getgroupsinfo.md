---
description: 获取群资料
---

# getGroupsInfo

## API功能介绍

获取群资料

* 该接口支持一次传入多个 `groupID`，批量获取多个群的群资料。

## 参数详解

| 参数名称        | 参数类型           | 是否必填 | 描述           |
| ----------- | -------------- | ---- | ------------ |
| groupIDList | List< String > | 是    | 需要查询的群组 ID列表 |

## 返回模板

```dart
V2TimValueCallback<List<V2TimGroupInfoResult>>

{
    code : int
    desc : String
    data : List<V2TimGroupInfoResult>
}
```

## 返回参数详解

| 名称   | 数值类型                                             | 描述                                                             |
| ---- | ------------------------------------------------ | -------------------------------------------------------------- |
| code | int                                              | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                                           | 请求结果描述                                                         |
| data | List< [V2TimGroupInfoResult](broken-reference) > | 查询到的群组信息列表                                                     |

## 使用案例  &#x20;

```dart
    //获取群资料
     V2TimValueCallback<List<V2TimGroupInfoResult>> getGroupsInfoRes =
        await TencentImSDKPlugin.v2TIMManager
            .getGroupManager()
            .getGroupsInfo(groupIDList: []);// 需要查询的群组id列表
    if (getGroupsInfoRes.code == 0) {
      // 查询成功
      getGroupsInfoRes.data?.forEach((element) {
        element.resultCode;// 此群组查询结果码
        element.resultMessage;// 此群查询结果描述
        element.groupInfo?.createTime;// 群创建时间
        element.groupInfo?.customInfo;// 群自定义字段
        element.groupInfo?.faceUrl;// 群头像Url
        element.groupInfo?.groupAddOpt;// 群添加选项设置
        element.groupInfo?.groupID;// 群ID
        element.groupInfo?.groupName;// 群名
        element.groupInfo?.groupType;// 群类型
        element.groupInfo?.introduction;// 群介绍
        element.groupInfo?.isAllMuted;// 群是否全体禁言
        element.groupInfo?.isSupportTopic;// 群是否支持话题
        element.groupInfo?.joinTime;// 当前用户在此群的加入时间
        element.groupInfo?.lastInfoTime;// 最后一次群修改资料的时间
        element.groupInfo?.lastMessageTime;// 最后一次群发消息的时间
        element.groupInfo?.memberCount;// 群员数量
        element.groupInfo?.notification;// 群公告
        element.groupInfo?.onlineCount;// 群在线人数
        element.groupInfo?.owner;// 群主
        element.groupInfo?.recvOpt;// 当前用户在此群中接受信息的选项
        element.groupInfo?.role;// 此用户在群中的角色
      });
    }

```

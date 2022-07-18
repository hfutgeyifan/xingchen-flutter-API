---
description: 修改群资料
---

# setGroupInfo

## API功能介绍

修改群资料

* 如果您事先调用 `addGroupListener` 添加了群组事件监听器，群资料被修改后，全员会收到 `onGroupInfoChanged` 回调。

不同类型的群组，可以修改群资料的成员角色不同：

| 群组类型            | 可以修改**群基础资料**的成员角色 |
| --------------- | ------------------ |
| 好友工作群(Work)     | 所有群成员              |
| 陌生人社交群（Public）  | 群主和管理员             |
| 临时会议群（Meeting）  | 群主和管理员             |
| 社群（Community）   | 群主和管理员             |
| 直播群（AVChatRoom） | 群主                 |

## 参数详解

| 参数名称 | 参数类型                                            | 是否必填 | 描述      |
| ---- | ----------------------------------------------- | ---- | ------- |
| info | [V2TimGroupInfo](../../class/v2timgroupinfo.md) | 是    | 群资料设置信息 |

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
    // 设置群资料设置 只有以下属性可修改，groupID为需要修改的群组id
    V2TimGroupInfo info = V2TimGroupInfo(
      groupID: 'groupID',// 需要修改的群组id
      groupType: "Public",// 群类型
      groupName: 'groupName',// 群名
      isSupportTopic: false,// 是否支持话题
      notification: "",// 群公告
      introduction: "",// 群介绍
      faceUrl: "",// 群头像Url
      isAllMuted: false,// 是否全体禁言
      groupAddOpt: 0,// 入群设置
      customInfo: {"custom": "custom"},// 群自定义属性
    );
    V2TimCallback setGroupInfoRes = await TencentImSDKPlugin.v2TIMManager
        .getGroupManager()
        .setGroupInfo(info: info);
    if (setGroupInfoRes == 0) {
      // 修改成功
    }
```

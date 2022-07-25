---
description: 群成员信息被修改，仅支持禁言通知（全员能收到）
---

# OnMemberInfoChangedCallback

## 功能介绍

群成员信息被修改，仅支持禁言通知（全员能收到）

## 回调函数模版

```dart
OnMemberInfoChangedCallback = void Function(
String groupID,
List<V2TimGroupMemberChangeInfo> v2TIMGroupMemberChangeInfoList
)
```

## 参数详解

| 参数名称                           | 参数类型                                                                                       | 参数描述      |
| ------------------------------ | ------------------------------------------------------------------------------------------ | --------- |
| groupID                        | String                                                                                     | 群 ID      |
| v2TIMGroupMemberChangeInfoList | List< [V2TimGroupMemberChangeInfo](../guan-jian-lei/group/v2timgroupmemberchangeinfo.md) > | 被修改的群成员信息 |

## 代码示例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onMemberInfoChanged: (String groupID,
          List<V2TimGroupMemberChangeInfo>
              v2TIMGroupMemberChangeInfoList) async {
        //群成员信息被修改，仅支持禁言通知（全员能收到）。
        //groupID	群 ID
        //v2TIMGroupMemberChangeInfoList	被修改的群成员信息
      }
    );
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```

---
description: 有用户离开群（全员能够收到）
---

# OnMemberLeaveCallback

## 回调函数功能描述

有用户离开群（全员能够收到）

## 回调函数模版

```dart
OnMemberLeaveCallback = void Function(
String groupID,
V2TimGroupMemberInfo member
)
```

## 回调函数参数说明

| 参数名称    | 参数类型                                                                   | 参数描述  |
| ------- | ---------------------------------------------------------------------- | ----- |
| groupID | String                                                                 | 群 ID  |
| member  | [V2TimGroupMemberInfo](../guan-jian-lei/group/v2timgroupmemberinfo.md) | 离开的成员 |

## 使用案例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onMemberLeave: (String groupID, V2TimGroupMemberInfo member) async {
        //有用户离开群（全员能够收到）
        //groupID	群 ID
        //member	离开的成员
      }
    );
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```


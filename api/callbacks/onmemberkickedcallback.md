---
description: 某些人被踢出某群（全员能够收到）
---

# OnMemberKickedCallback

## 功能介绍

某些人被踢出某群（全员能够收到）

## 回调函数模版

```dart
OnMemberInvitedCallback = void Function(
String groupID,
V2TimGroupMemberInfo opUser,
List<V2TimGroupMemberInfo> memberList
)
```

## 参数详解

| 参数名称       | 参数类型                                                                           | 参数描述 |
| ---------- | ------------------------------------------------------------------------------ | ---- |
| groupID    | String                                                                         | 群 ID |
| opUser     | [V2TimGroupMemberInfo](../guan-jian-lei/group/v2timgroupmemberinfo.md)         | 处理人  |
| memberList | List< [V2TimGroupMemberInfo](../guan-jian-lei/group/v2timgroupmemberinfo.md) > | 被踢成员 |

## 代码示例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onMemberKicked: (String groupID, V2TimGroupMemberInfo opUser,
          List<V2TimGroupMemberInfo> memberList) async {
        //某些人被踢出某群（全员能够收到）
        //groupID	群 ID
        //opUser	处理人
        //memberList	被踢成员
      }
    );
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```

---
description: 些人被拉入某群（全员能够收到）
---

# OnMemberInvitedCallback

## 回调函数功能描述

些人被拉入某群（全员能够收到）

## 回调函数模版

```dart
OnMemberInvitedCallback = void Function(
String groupID,
V2TimGroupMemberInfo opUser,
List<V2TimGroupMemberInfo> memberList
)
```

## 回调函数参数说明

| 参数名称       | 参数类型                                             | 参数描述   |
| ---------- | ------------------------------------------------ | ------ |
| groupID    | String                                           | 群 ID   |
| opUser     | [V2TimGroupMemberInfo](broken-reference)         | 处理人    |
| memberList | List< [V2TimGroupMemberInfo](broken-reference) > | 被拉进群成员 |

## 代码示例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onMemberInvited: (String groupID, V2TimGroupMemberInfo opUser,
          List<V2TimGroupMemberInfo> memberList) async {
        //某些人被拉入某群（全员能够收到）
        //groupID	群 ID
        //opUser	处理人
        //memberList	被拉进群成员
      }
    );
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```


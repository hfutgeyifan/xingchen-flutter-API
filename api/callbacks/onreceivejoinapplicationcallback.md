---
description: 有新的加群请求（只有群主或管理员会收到）
---

# OnReceiveJoinApplicationCallback

## 回调函数功能描述

有新的加群请求（只有群主或管理员会收到）

## 回调函数模版

```dart
OnReceiveJoinApplicationCallback = void Function(
String groupID,
V2TimGroupMemberInfo member,
String opReason
)
```

## 回调函数参数说明

| 参数名称     | 参数类型                                                                   | 参数描述 |
| -------- | ---------------------------------------------------------------------- | ---- |
| groupID  | String                                                                 | 群 ID |
| member   | [V2TimGroupMemberInfo](../guan-jian-lei/group/v2timgroupmemberinfo.md) | 申请人  |
| opReason | String                                                                 | 申请原因 |

## 代码示例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onReceiveJoinApplication:
          (String groupID, V2TimGroupMemberInfo member, String opReason) async {
        //有新的加群请求（只有群主或管理员会收到）
        //groupID	群 ID
        //member	申请人
        //opReason	申请原因
      }
    );
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```

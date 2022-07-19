---
description: 修改指定的群成员资料
---

# setGroupMemberInfo

## 功能介绍

修改指定的群成员资料

* 群主或管理员可以调用 `setGroupMemberInfo` 接口修改群成员的群名片（`nameCard`）、自定义字段（`customInfo`）。

## 参数详解

| 参数名称       | 参数类型                  | 是否必填 | 描述        |
| ---------- | --------------------- | ---- | --------- |
| groupID    | String                | 是    | 需要修改的群组id |
| userID     | String                | 是    | 需要修改的用户id |
| nameCard   | String                | 否    | 修改名片属性    |
| customInfo | Map< String, String > | 否    | 修改自定义属性   |

## 返回值

```dart
V2TimCallback

{
    code : int
    desc : String
}
```

## 返回值详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |

## 代码示例  &#x20;

```dart
    // 修改指定的群成员资料
    V2TimCallback setGroupMemberInfoRes = await TencentImSDKPlugin.v2TIMManager
        .getGroupManager()
        .setGroupMemberInfo(
          groupID: "groupID",// 需要修改的群组id
          userID: "userID",// 需要修改的用户id
          nameCard: "",// 修改名片属性
          customInfo: {"custom":"custom"}// 修改自定义属性 
          );
    if (setGroupMemberInfoRes.code == 0) {
      // 修改成功
    }

```

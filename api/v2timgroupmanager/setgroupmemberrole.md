---
description: 设置群成员的角色
---

# setGroupMemberRole

## API功能介绍

修改群资料

* 普通成员被授权为管理员后，全员（包括被设置的成员）会收到 `onGrantAdministrator` 回调。
* 普通成员被取消管理员授权后，全员（包括被设置的成员）会收到 `onRevokeAdministrator` 回调。

{% hint style="info" %}
公开群（Public）和会议群（Meeting）：只有群主才能对群成员进行普通成员和管理员之间的角色切换。&#x20;

其他群不支持设置群成员角色。 转让群组请调用 transferGroupOwner 接口。
{% endhint %}

## 参数详解

| 参数名称    | 参数类型                                        | 是否必填 | 描述         |
| ------- | ------------------------------------------- | ---- | ---------- |
| groupID | String                                      | 是    | 设置群组的id    |
| userID  | String                                      | 是    | 被设置角色的用户id |
| role    | [GroupMemberRoleTypeEnum](broken-reference) | 是    | 用户被设置的角色属性 |

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
    // 设置群成员的角色
    V2TimCallback setGroupMemberRoleRes = await TencentImSDKPlugin.v2TIMManager
        .getGroupManager()
        .setGroupMemberRole(
          groupID: "groupID",// 设置群组的id
          userID: "userID",// 被设置角色的用户id
          role: GroupMemberRoleTypeEnum.V2TIM_GROUP_MEMBER_ROLE_ADMIN// 用户被设置的角色属性
          );
    if (setGroupMemberRoleRes == 0) {
      // 设置成功
    }
```

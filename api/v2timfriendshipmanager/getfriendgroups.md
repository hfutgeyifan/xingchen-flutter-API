---
description: 获取分组信息
---

# getFriendGroups

## API功能介绍

修改好友分组的名称

* groupNameList 传入 null 获得所有分组信息。

## 参数详解

| 参数名称          | 参数类型           | 是否必填 | 描述             |
| ------------- | -------------- | ---- | -------------- |
| groupNameList | List< String > | 是    | 要获取信息的好友分组名称列表 |

## 返回模板

```dart
V2TimValueCallback<List<V2TimFriendGroup>>

{
    code : int
    desc : String
    data : List<V2TimFriendGroup>// 查询到的分组信息
}
```

## 返回参数详解

| 名称   | 数值类型                     | 描述                                                             |
| ---- | ------------------------ | -------------------------------------------------------------- |
| code | int                      | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String                   | 请求结果描述                                                         |
| data | List< V2TimFriendGroup > | 查询到的分组信息                                                       |

## 使用案例  &#x20;

```dart
    // 获取分组信息
    V2TimValueCallback<List<V2TimFriendGroup>> getFriendGroupsRes =
        await TencentImSDKPlugin.v2TIMManager
            .getFriendshipManager()
            .getFriendGroups(groupNameList: []);
    if (getFriendGroupsRes.code == 0) {
      // 查询成功
      getFriendGroupsRes.data?.forEach((element) {
        element.friendCount;//此组的好友数
        element.friendIDList;//此组的好友id列表
        element.name;//此组的名称
      });
    }
```

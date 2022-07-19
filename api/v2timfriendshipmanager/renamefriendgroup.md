---
description: 修改好友分组的名称
---

# renameFriendGroup

## 功能介绍

修改好友分组的名称

## 参数详解

| 参数名称    | 参数类型   | 是否必填 | 描述     |
| ------- | ------ | ---- | ------ |
| oldName | String | 是    | 旧的分组名称 |
| newName | String | 是    | 新的分组名称 |

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
    //修改好友分组的名称
    V2TimCallback renameFriendGroupRes = await TencentImSDKPlugin.v2TIMManager
        .getFriendshipManager()
        .renameFriendGroup(
          oldName: "", //旧的分组名称
          newName: "", //新的分组名称
          );
    if (renameFriendGroupRes.code == 0) {
      // 修改成功
    }
```

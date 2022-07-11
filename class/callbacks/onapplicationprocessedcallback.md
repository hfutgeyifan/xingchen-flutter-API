---
description: 监听黑名单列表增加的回调函数
---

# OnApplicationProcessedCallback

## 回调函数功能描述

监听黑名单列表增加的回调函数

## 回调函数模版

```dart
OnBlackListAddCallback = void Function(
List<V2TimFriendInfo> infoList
)
```

## 回调函数参数说明

| 参数名称     | 参数类型                                                                     | 参数描述 |
| -------- | ------------------------------------------------------------------------ | ---- |
| infoList | List<[V2TimFriendInfo](../../api/guan-jian-lei/user/v2timfriendinfo.md)> |      |

---
description: 收到群属性更新的回调
---

# OnGroupAttributeChangedCallback

## 功能介绍

收到群属性更新的回调

## 回调函数模版

```dart
OnGroupAttributeChangedCallback = void Function(
String groupID,
Map<String, String> groupAttributeMap
)
```

## 参数详解

| 参数名称              | 参数类型                  | 参数描述   |
| ----------------- | --------------------- | ------ |
| groupID           | String                | 群 ID   |
| groupAttributeMap | Map< String, String > | 群的所有属性 |

## 代码示例

```dart
    //设置群组监听器
    V2TimGroupListener listener = V2TimGroupListener(
      onGroupAttributeChanged:
          (String groupID, Map<String, String> groupAttributeMap) async {
        //收到群属性更新的回调
        //groupID	群 ID
        //groupAttributeMap	群的所有属性
      }
    );
    //添加群组监听器
    TencentImSDKPlugin.v2TIMManager.addGroupListener(listener: listener);
```


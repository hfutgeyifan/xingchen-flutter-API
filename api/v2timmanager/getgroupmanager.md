---
description: 高级群组功能入口
---

# getGroupManager

## API功能介绍

高级群组功能入口

* 高级群组功能方法在核心类 `TencentImSDKPlugin.v2TIMManager.getGroupManager()中`。

## 参数详解

{% hint style="info" %}
此API无参数
{% endhint %}

## 返回模板

```dart
V2TIMGroupManager
```

## 返回参数详解

| 名称                | 数值类型                                       | 描述       |
| ----------------- | ------------------------------------------ | -------- |
| V2TIMGroupManager | [V2TIMGroupManager](../v2timgroupmanager/) | 高级群组功能入口 |

## 使用案例  &#x20;

```dart
    // 使用getGroupManager创建群组的案例
    // 创建群组
    V2TimValueCallback<String> createGroupRes =
        await TencentImSDKPlugin.v2TIMManager.getGroupManager().createGroup(
      groupType: "Publich",// 群类型
      groupName: "groupName",// 群名称，不能为 null。
      notification: "",// 群公告
      introduction: "",// 群介绍
      faceUrl: "",// 群头像Url
      isAllMuted: false,// 是否全体禁言
      isSupportTopic: false,// 是否支持话题
      addOpt: GroupAddOptTypeEnum.V2TIM_GROUP_ADD_AUTH,// 添加群设置
      memberList: [],// 初始成员列表
    );
    if (createGroupRes.code == 0) {
      // 创建成功
      var groupId = createGroupRes.data;// 创建的群号
    }
```

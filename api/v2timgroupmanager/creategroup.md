---
description: 创建自定义群组
---

# createGroup

## API功能介绍

创建自定义群组

{% hint style="info" %}
不支持在同一个 SDKAPPID 下创建两个相同 groupID 的群&#x20;

&#x20;memberList 指定初始的群成员（直播群 AVChatRoom 不支持指定初始群成员，memberList 请传 null）

社群（Community）功能仅 SDK 5.8.1668 增强版及以上版本、Web SDK 2.17.0 及以上版本支持，您需 [购买旗舰版套餐包](https://buy.cloud.tencent.com/avc?from=17182) 并 [申请开通](https://cloud.tencent.com/document/product/269/3916?from=17212) 后方可使用。

专业版或旗舰版 SDKAppID 下，所有群类型日净增群组数上限为 1 万个。免费峰值群组数为 10 万个/月，超出免费量将产生 [套餐外超量费用](https://cloud.tencent.com/document/product/269/11673#jc)。
{% endhint %}

## 参数详解

| 参数名称           | 参数类型                                                   | 是否必填 | 描述            |
| -------------- | ------------------------------------------------------ | ---- | ------------- |
| groupID        | String                                                 | 否    | 自定义群组 ID      |
| groupType      | [GroupType](../enums/grouptype.md)                     | 是    | 群类型           |
| groupName      | String                                                 | 是    | 群名称，不能为 null。 |
| notification   | String                                                 | 否    | 群公告           |
| introduction   | String                                                 | 否    | 群介绍           |
| faceUrl        | String                                                 | 否    | 群头像Url        |
| isAllMuted     | bool                                                   | 否    | 是否全体禁言        |
| addOpt         | [GroupAddOptTypeEnum](../enums/groupaddopttypeenum.md) | 否    | 加群选项          |
| memberList     | List< V2TimGroupMember >                               | 否    |  初始成员列表       |
| isSupportTopic | bool                                                   | 否    | 是否支持话题        |

## 返回模板

```dart
V2TimValueCallback<String>

{
    code : int
    desc : String
    data : String // 创建的群组id
}
```

## 返回参数详解

| 名称   | 数值类型   | 描述                                                             |
| ---- | ------ | -------------------------------------------------------------- |
| code | int    | 请求结果[错误码](https://cloud.tencent.com/document/product/269/1671) |
| desc | String | 请求结果描述                                                         |
| data | String | 创建的群组id                                                        |

## 使用案例  &#x20;

```dart
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

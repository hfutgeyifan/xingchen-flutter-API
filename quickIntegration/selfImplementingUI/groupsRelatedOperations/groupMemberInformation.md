## 功能描述
群成员资料相关方法在核心类 [`TencentImSDKPlugin.v2TIMManager.getGroupManager()`](../../../api/v2timmanager/getgroupmanager.md) 中。

[](id:getGroupMembersInfo)

## 获取群成员资料

您可以调用 [`getGroupMembersInfo`](../../../api/v2timgroupmanager/getgroupmembersinfo.md) 获取群成员资料。该接口支持批量获取，您可以一次传入多个 `userID` 获取多个群成员的资料，从而提升网络传输效率。

示例代码如下：



```dart
// 获取群成员资料
V2TimValueCallback<List<V2TimGroupMemberFullInfo>> memberInfos = await groupManager.getGroupMembersInfo(groupID: "groupID", memberList: ["id1"]);
```

[](id:setGroupMemberInfo)

## 修改群成员资料

群主或管理员可以调用 [`setGroupMemberInfo`](../../../api/v2timgroupmanager/setgroupinfo.md) 接口修改群成员的群名片（`nameCard`）、自定义字段（`customInfo`）等与群成员相关的资料。

示例代码如下：



```java
// 设置群成员资料
groupManager.setGroupMemberInfo(groupID: "",userID: "",nameCard: "",customInfo: {});
```


## 交流与反馈

欢迎加入 QQ 群进行技术交流和反馈问题，QQ 群：**788910197**。

<img style="width: 200px; max-width: inherit; zoom: 50%;" src="https://qcloudimg.tencent-cloud.cn/raw/f351a1640d265047db85ffab1cd086a7.png" />


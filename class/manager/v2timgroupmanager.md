---
description: 群组高级接口，包含了群组的高级功能，例如群成员邀请、非群成员申请进群等操作接口。
---

# V2TIMGroupManager

## V2TIMManager功能介绍

IM SDK 主核心类，负责 IM SDK 的初始化、登录、消息收发，建群退群等功能。

## API目录

| API                                                                                                                                                                          | 描述                                         |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------ |
| [acceptGroupApplication](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/acceptGroupApplication.html)       | 同意某一条加群申请                                  |
| [createGroup](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/createGroup.html)                             | 创建自定义群组（高级版本：可以指定初始的群成员）                   |
| [createTopicInCommunity](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/createTopicInCommunity.html)       | 创建话题 4.0.1及以上版本支持 web版本不支持                 |
| [deleteGroupAttributes](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/deleteGroupAttributes.html)         | 删除指定群属性                                    |
| [deleteTopicFromCommunity](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/deleteTopicFromCommunity.html)   | 删除话题 4.0.1及以上版本支持 web版本不支持                 |
| [getGroupApplicationList](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/getGroupApplicationList.html)     | 获取加群的申请列表                                  |
| [getGroupAttributes](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/getGroupAttributes.html)               | 获取指定群属性                                    |
| [getGroupMemberList](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/getGroupMemberList.html)               | 获取群成员列表                                    |
| [getGroupMembersInfo](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/getGroupMembersInfo.html)             | 获取指定的群成员资料                                 |
| [getGroupOnlineMemberCount](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/getGroupOnlineMemberCount.html) | 获取指定群在线人数                                  |
| [getGroupsInfo](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/getGroupsInfo.html)                         | 拉取群资料                                      |
| [getJoinedCommunityList](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/getJoinedCommunityList.html)       | 获取当前用户已经加入的支持话题的社群列表 4.0.1及以上版本支持 web版本不支持 |
| [getJoinedGroupList](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/getJoinedGroupList.html)               | 获取当前用户已经加入的群列表                             |
| [getTopicInfoList](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/getTopicInfoList.html)                   | 获取话题列表  4.0.1及以上版本支持 web版本不支持              |
| [inviteUserToGroup](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/inviteUserToGroup.html)                 | 邀请他人入群                                     |
| [kickGroupMember](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/kickGroupMember.html)                     | 踢人                                         |
| [muteGroupMember](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/muteGroupMember.html)                     | 禁言（只有管理员或群主能够调用）                           |
| [refuseGroupApplication](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/refuseGroupApplication.html)       | 拒绝某一条加群申请                                  |
| [searchGroupByID](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/searchGroupByID.html)                     | 通过 groupID 搜索群组  仅 web 支持该搜索方式             |
| [searchGroupMembers](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/searchGroupMembers.html)               | 搜索群成员                                      |
| [searchGroups](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/searchGroups.html)                           | 搜索群资料(需要您购买旗舰套餐)                           |
| [setGroupApplicationRead](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/setGroupApplicationRead.html)     | 标记申请列表为已读                                  |
| [setGroupAttributes](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/setGroupAttributes.html)               | 设置群属性                                      |
| [setGroupInfo](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/setGroupInfo.html)                           | 修改群资料                                      |
| [setGroupMemberInfo](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/setGroupMemberInfo.html)               | 修改指定的群成员资料                                 |
| [setGroupMemberRole](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/setGroupMemberRole.html)               | 切换群成员的角色                                   |
| [setTopicInfo](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/setTopicInfo.html)                           | 删除话题 4.0.1及以上版本支持 web版本不支持                 |
| [transferGroupOwner](https://pub.dev/documentation/tencent\_im\_sdk\_plugin/latest/manager\_v2\_tim\_group\_manager/V2TIMGroupManager/transferGroupOwner.html)               | 转让群主                                       |

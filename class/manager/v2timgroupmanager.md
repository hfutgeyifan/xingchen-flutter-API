---
description: 群组高级接口，包含了群组的高级功能，例如群成员邀请、非群成员申请进群等操作接口。
---

# V2TIMGroupManager

## V2TIMGroupManager功能介绍

群组高级接口，包含了群组的高级功能，例如群成员邀请、非群成员申请进群等操作接口。

## API目录

| API                                                                                   | 描述                                         |
| ------------------------------------------------------------------------------------- | ------------------------------------------ |
| acceptGroupApplication                                                                | 同意某一条加群申请                                  |
| [createGroup](../../api/v2timgroupmanager/creategroup.md)                             | 创建自定义群组                                    |
| createTopicInCommunity                                                                | 创建话题 4.0.1及以上版本支持 web版本不支持                 |
| deleteGroupAttributes                                                                 | 删除指定群属性                                    |
| deleteTopicFromCommunity                                                              | 删除话题 4.0.1及以上版本支持 web版本不支持                 |
| getGroupApplicationList                                                               | 获取加群的申请列表                                  |
| getGroupAttributes                                                                    | 获取指定群属性                                    |
| [getGroupMemberList](../../api/v2timgroupmanager/getgroupmemberlist.md)               | 获取群成员列表                                    |
| [getGroupMembersInfo](../../api/v2timgroupmanager/getgroupmembersinfo.md)             | 获取指定的群成员资料                                 |
| [getGroupOnlineMemberCount](../../api/v2timgroupmanager/getgrouponlinemembercount.md) | 获取指定群在线人数                                  |
| [getGroupsInfo](../../api/v2timgroupmanager/getgroupsinfo.md)                         | 拉取群资料                                      |
| getJoinedCommunityList                                                                | 获取当前用户已经加入的支持话题的社群列表 4.0.1及以上版本支持 web版本不支持 |
| [getJoinedGroupList](../../api/v2timgroupmanager/getjoinedgrouplist.md)               | 获取当前用户已经加入的群列表                             |
| getTopicInfoList                                                                      | 获取话题列表  4.0.1及以上版本支持 web版本不支持              |
| initGroupAttributes                                                                   | 初始化群属性                                     |
| inviteUserToGroup                                                                     | 邀请他人入群                                     |
| [kickGroupMember](../../api/v2timgroupmanager/kickgroupmember.md)                     | 踢人                                         |
| [muteGroupMember](../../api/v2timgroupmanager/mutegroupmember.md)                     | 禁言（只有管理员或群主能够调用）                           |
| refuseGroupApplication                                                                | 拒绝某一条加群申请                                  |
| searchGroupByID                                                                       | 通过 groupID 搜索群组  仅 web 支持该搜索方式             |
| searchGroupMembers                                                                    | 搜索群成员                                      |
| searchGroups                                                                          | 搜索群资料(需要您购买旗舰套餐)                           |
| setGroupApplicationRead                                                               | 标记申请列表为已读                                  |
| setGroupAttributes                                                                    | 设置群属性                                      |
| [setGroupInfo](../../api/v2timgroupmanager/setgroupinfo.md)                           | 修改群资料                                      |
| setGroupMemberInfo                                                                    | 修改指定的群成员资料                                 |
| [setGroupMemberRole](../../api/v2timgroupmanager/setgroupmemberrole.md)               | 设置群成员的角色                                   |
| setTopicInfo                                                                          | 删除话题 4.0.1及以上版本支持 web版本不支持                 |
| [transferGroupOwner](../../api/v2timgroupmanager/transfergroupowner.md)               | 转让群主                                       |

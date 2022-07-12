---
description: 资料关系链回调
---

# V2TimFriendshipListener

## 关键类描述

资料关系链回调

## 参数

### onFriendApplicationListAdded

参数类型 : OnFriendApplicationListAddedCallback

参数描述：好友申请新增通知,两种情况会收到这个回调：

1. 自己申请加别人好友
2. 别人申请加自己好友

### onFriendApplicationListDeleted

参数类型 : OnFriendApplicationListDeletedCallback

参数描述：好友申请删除通知，四种情况会收到这个回调：

1. 调用 deleteFriendApplication 主动删除好友申请
2. 调用 refuseFriendApplication 拒绝好友申请
3. 调用 acceptFriendApplication 同意好友申请
4. 申请加别人好友被拒绝

### onFriendApplicationListRead

参数类型 : OnFriendApplicationListReadCallback

参数描述：好友申请已读通知，如果调用 setFriendApplicationRead 设置好友申请列表已读，会收到这个回调（主要用于多端同步）

### onFriendListAdded

参数类型 : OnFriendListAddedCallback

参数描述：好友新增通知

### onFriendListDeleted

参数类型 : OnFriendListDeletedCallback

参数描述：好友删除通知，两种情况会收到这个回调：

1. 自己删除好友（单向和双向删除都会收到回调）
2. 好友把自己删除（双向删除会收到）

### onBlackListAdd

参数类型 : OnBlackListAddCallback

参数描述：黑名单新增通知

### onBlackListDeleted

参数类型 : OnBlackListDeletedCallback

参数描述：黑名单删除通知

### onFriendInfoChanged

参数类型 : OnFriendInfoChangedCallback

参数描述：好友资料变更通知

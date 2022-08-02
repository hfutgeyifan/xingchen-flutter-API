---
description: UIkit操作结果类
---

# TIMCallback

## 关键类描述

UIkit操作结果类

## 参数

### type

* 参数类型 : [TIMCallbackType](TIMCallbackType.md)
* 参数描述 : UIKit错误类型

### errorMsg

* 参数类型 : String
* 参数描述 : SDK API错误描述

### errorCode

* 参数类型 : Future< bool > Function(String userID, String? remark, String? friendGroup, String? addWording, \[BuildContext? context])
* 参数描述 : SDK API错误码

### stackTrace

* 参数类型 : Future< bool > Function(String userID, String? remark, String? friendGroup, String? addWording, \[BuildContext? context])
* 参数描述 : flutter栈的错误

### catchError

* 参数类型 : Future< bool > Function(String userID, String? remark, String? friendGroup, String? addWording, \[BuildContext? context])
* 参数描述 : flutter层捕捉的错误

### infoCode

* 参数类型 : Future< bool > Function(String userID, String? remark, String? friendGroup, String? addWording, \[BuildContext? context])
* 参数描述 : 场景码

### infoRecommendText

* 参数类型 : Future< bool > Function(String userID, String? remark, String? friendGroup, String? addWording, \[BuildContext? context])
* 参数描述 : 推荐提示语
  全部场景码清单如下：

| 场景码 `infoCode` | 推荐提示语 `infoRecommendText`                               | 场景描述                                                                    |
| ----------------- | ------------------------------------------------------------ | --------------------------------------------------------------------------- |
| 6660101           | 好友申请已发送                                               | 用户申请添加其他用户为联系人                                                |
| 6660102           | 该用户已是好友                                               | 用户申请添加其他已是好友的用户为好友时，触发 `onTapAlreadyFriendsItem` 回调 |
| 6660201           | 群申请已发送                                                 | 用户申请加入需要管理员审批的群聊                                            |
| 6660202           | 您已是群成员                                                 | 用户申请加群时，判断用户已经是当前群成员，触发 `onTapExistGroup` 回调       |
| 6660401           | 无法定位到原消息                                             | 当用户需要跳转至@消息或者是引用消息时，在消息列表中查不到目标消息           |
| 6660402           | 视频保存成功                                                 | 用户在消息列表，点开视频消息后，选择保存视频                                |
| 6660403           | 视频保存失败                                                 | 用户在消息列表，点开视频消息后，选择保存视频                                |
| 6660404           | 说话时间太短                                                 | 用户发送了过短的语音消息                                                    |
| 6660405           | 发送失败,视频不能大于 100MB                                  | 用户试图发送大于 100MB 的视频                                               |
| 6660406           | 图片保存成功                                                 | 用户在消息列表，点开图片大图后，选择保存图片                                |
| 6660407           | 图片保存失败                                                 | 用户在消息列表，点开图片大图后，选择保存图片                                |
| 6660408           | 已复制                                                       | 用户在弹窗内选择复制文字消息                                                |
| 6660409           | 暂未实现                                                     | 用户在弹窗内选择非标功能                                                    |
| 6660410           | 其他文件正在接收中                                           | 用户点击下载文件消息时，前序下载任务还未完成                                |
| 6660411           | 正在接收中                                                   | 用户点击下载文件消息                                                        |
| 6661001           | 无网络连接，无法修改                                         | 当用户试图在无网络环境下，修改群资料                                        |
| 6661002           | 无网络连接，无法查看群成员                                   | 当用户试图在无网络环境下，修改群资料                                        |
| 6661003           | 成功取消管理员身份                                           | 用户将群内其他用户移除管理员                                                |
| 6661201           | 无网络连接，无法修改                                         | 当用户试图在无网络环境下，修改自己或联系人的资料                            |
| 6661202           | 好友添加成功                                                 | 在资料页添加其他用户为好友，并自动添加成功，无需验证                        |
| 6661203           | 好友申请已发出                                               | 在资料页添加其他用户为好友，对方设置需要验证                                |
| 6661204           | 当前用户在黑名单                                             | 在资料页添加其他用户为好友，对方在自己的黑名单内                            |
| 6661205           | 好友添加失败                                                 | 在资料页添加其他用户为好友，添加失败，可能是由于对方禁止加好友              |
| 6661206           | 好友删除成功                                                 | 在资料页删除其他用户为好友，成功                                            |
| 6661207           | 好友删除失败                                                 | 在资料页删除其他用户为好友，失败                                            |
| 6661401           | 输入不能为空                                                 | 当用户在录入信息时，输入了空字符串                                          |
| 6661402           | 请传入离开群组生命周期函数，提供返回首页或其他页面的导航方法 | 用户退出群或解散群时，为提供返回首页办法                                    |
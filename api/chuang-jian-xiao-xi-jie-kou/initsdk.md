# createTextMessage

## API请求案例

```dart
Future<V2TimValueCallback<V2TimMsgCreateInfoResult>> createTextMessage(
{required String text}
)
```

## 参数详解

| 参数名称 | 参数类型   | 是否必填 | 描述     |
| ---- | ------ | ---- | ------ |
| text | String | 是    | 要传递的文本 |

## 返回模板

```dart
V2TimValueCallback<V2TimMsgCreateInfoResult>

{
    code:int,
    data:V2TimMsgCreateInfoResult,
    desc:String,
    hashCode:int,
    runtimeType:Type
}
```

## 返回参数详解

| 名称          | 数值类型                                                                  | 描述       |
| ----------- | --------------------------------------------------------------------- | -------- |
| code        | int                                                                   | 创建信息返回码  |
| data        | [V2TimMsgCreateInfoResult](../../class/message/v2timsdklistener-1.md) | 创建信息返回结果 |
| desc        | String                                                                |          |
| hashCode    | int                                                                   |          |
| runtimeType | Type                                                                  |          |

## 使用案例

```dart
// 创建文本消息
V2TimValueCallback<V2TimMsgCreateInfoResult> createTextMessageRes = await TencentImSDKPlugin.v2TIMManager.getMessageManager().createTextMessage(
    text: "test",
    atUserList: [],
  );
 if(createTextMessageRes.code == 0){
    String id =  createTextAtMessageRes.data.id;

       // 发送文本消息
    V2TimValueCallback<V2TimMessage> sendMessageRes = await TencentImSDKPlugin.v2TIMManager.getMessageManager().sendMessage(id: id, receiver: "userID", groupID: "");
    if(sendMessageRes.code == 0){
      // 发送成功
    }
  }
```

## 相关平台接口：

IM SDK for unity

IM SDK for Android

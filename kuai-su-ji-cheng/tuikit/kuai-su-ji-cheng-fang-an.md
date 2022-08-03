## 什么是 TUIKit
Flutter TUIKit 是基于 Flutter IM SDK 实现的一套 UI 组件，其中包含会话、聊天、关系链、群组等功能，基于 UI 组件您可以像搭积木一样快速搭建起自己的业务逻辑。其构架图如下：
![](https://qcloudimg.tencent-cloud.cn/raw/f704b22c049c9915ffa5ccdca2aeab85.png)

目前包含的组件如下：

- [TIMUIKitCore](../../uikit-sdk-api/TIMUIKitCore/README.md) 核心
- [TIMUIKitConversation](../../uikit-sdk-api/TIMUIKitConversation/README.md) 会话
- [TIMUIKitChat](../../uikit-sdk-api/TIMUIKitChat/README.md) 聊天
- [TIMUIKitContact](../../uikit-sdk-api/TIMUIKitContact/README.md) 联系人
- [TIMUIKitProfile](../../uikit-sdk-api/TIMUIKitProfile/README.md) 好友管理
- [TIMUIKitGroupProfile](../../uikit-sdk-api/TIMUIKitGroupProfile/README.md) 群管理
- [TIMUIKitGroup](../../uikit-sdk-api/TIMUIKitGroup/README.md) 我的群聊
- [TIMUIKitBlackList](../../uikit-sdk-api/TIMUIKitBlackList/README.md) 黑名单
- [TIMUIKitNewContact](../../uikit-sdk-api/TIMUIKitNewContact/README.md) 新的联系人
- [TIMUIKitSearch](../../uikit-sdk-api/TIMUIKitSearch/README.md) 本地搜索

![20220803114949](https://tuikit-1251787278.cos.ap-guangzhou.myqcloud.com/20220803114949.png)
上图项目源码：[im-flutter-uikit](https://github.com/tencentyun/TIMSDK/tree/master/Flutter/Demo/im-flutter-uikit)，项目已开源，您可直接使用。
## 支持平台
- Android
- iOS

## 操作步骤
如下会介绍如何使用 Flutter TUIKit 快速构建一个简单的即时通信应用。

### 步骤1: 创建 Flutter 应用并添加权限
请参见 [Flutter 文档](https://flutter.cn/docs/get-started/test-drive?tab=terminal) 快速创建一个 Flutter 应用。

#### 配置权限

由于 TUIKit 运行，需要拍摄/相册/录音/网络等权限，需要您在 Native 的文件中手动声明，才可正常使用相关能力。

**Android**

打开 `android/app/src/main/AndroidManifest.xml` ，在 `<manifest></manifest>`中，添加如下权限。

```xml
    <uses-permission
        android:name="android.permission.INTERNET"/>
    <uses-permission
        android:name="android.permission.RECORD_AUDIO"/>
    <uses-permission
        android:name="android.permission.FOREGROUND_SERVICE"/>
    <uses-permission
        android:name="android.permission.ACCESS_NETWORK_STATE"/>
    <uses-permission
        android:name="android.permission.VIBRATE"/>
    <uses-permission
        android:name="android.permission.ACCESS_BACKGROUND_LOCATION"/>
    <uses-permission
        android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
    <uses-permission
        android:name="android.permission.READ_EXTERNAL_STORAGE"/>
    <uses-permission
        android:name="android.permission.CAMERA"/>
```

**iOS**

打开 `ios/Podfile` ，在文件末尾新增如下权限代码。

```
post_install do |installer|
  installer.pods_project.targets.each do |target|
    flutter_additional_ios_build_settings(target)
    target.build_configurations.each do |config|
          config.build_settings['GCC_PREPROCESSOR_DEFINITIONS'] ||= [
            '$(inherited)',
            'PERMISSION_MICROPHONE=1',
            'PERMISSION_CAMERA=1',
            'PERMISSION_PHOTOS=1',
          ]
        end
  end
end
```

{% hint style="info" %}
说明：

如您需要用到推送能力，还需要添加推送相关权限，详情可查看 [Flutter 厂商消息推送插件集成指南](https://cloud.tencent.com/document/product/269/74605)。
{% endhint %}

### 步骤2: 安装依赖
在 pubspec.yaml 文件中的 `dependencies` 下添加 `tim_ui_kit`。或者执行如下命令：

```
// step 1:
flutter pub add tim_ui_kit

// step 2:
flutter pub get
```

### 步骤3: 初始化 TUIKit

在 `initState` 中初始化 `TIMUIKit`，项目启动只需要初始化一次即可。
```dart
/// main.dart
import 'package:flutter/material.dart';
import 'package:tim_ui_kit/tim_ui_kit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TIMUIKit Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'TIMUIKit Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CoreServicesImpl _coreInstance = TIMUIKitCore.getInstance();

  @override
  void initState() {
    _coreInstance.init(
      sdkAppID: 0, // 控制台申请的 SDKAppID
      loglevel: LogLevelEnum.V2TIM_LOG_DEBUG,
      listener: V2TimSDKListener());    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(),
    );
  }
}
```
### 步骤4: 获取签名和登录
{% hint style="info" %}
说明：

正确的 `UserSig` 签发方式是将 `UserSig` 的计算代码集成到您的服务端，并提供面向 App 的接口，在需要 `UserSig` 时由您的 App 向业务服务器发起请求获取动态 `UserSig`。更多详情请参见 [服务端生成 UserSig](https://cloud.tencent.com/document/product/269/32688#GeneratingdynamicUserSig)。
{% endhint %}

添加两个 `TextField` 用于输入 `UserID` 和 `UserSig`。单击**登录**后调用登录接口。

```dart
/// main.dart
/// 省略
class _MyHomePageState extends State<MyHomePage> {
  /// 获取 TIMUIKitCore Instance
  final CoreServicesImpl _coreInstance = TIMUIKitCore.getInstance();
  String userID = "";
  String userSig = "";

  /// 省略

  void _login() {
    // 登录
    _coreInstance.login(userID: userID, userSig: userSig);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: ((value) {
                setState(() {
                  userID = value;
                });
              }),
              decoration: InputDecoration(hintText: "userID"),
            ),
            TextField(
              onChanged: ((value) {
                setState(() {
                  userSig = value;
                });
              }),
              decoration: InputDecoration(hintText: "userSig"),
            ),
            ElevatedButton(
                onPressed: (() {
                  _login();
                }),
                child: const Text("登录"))
          ],
        ),
      ),
    );
  }
}

```



### 步骤5: 集成所需组件
- 创建 `message.dart` 文件集成 `TIMUIKitConversation` 和 `TIMUIKitChat` 包含不仅限于此。可根据您的需求集成更多的组件。
- 修改 `main.dart` 中代码，登录成功后跳转至该页面。 

```dart
/// message.dart
import 'package:flutter/material.dart';
import 'package:tim_ui_kit/tim_ui_kit.dart';

class Conversation extends StatelessWidget {
  const Conversation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "消息",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: TIMUIKitConversation(
        onTapItem: (selectedConv) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Chat(
                  selectedConversation: selectedConv,
                ),
              ));
        },
      ),
    );
  }
}

class Chat extends StatelessWidget {
  final V2TimConversation selectedConversation;
  const Chat({Key? key, required this.selectedConversation}) : super(key: key);
  String? _getConvID() {
    return selectedConversation.type == 1
        ? selectedConversation.userID
        : selectedConversation.groupID;
  }

  @override
  Widget build(BuildContext context) {
    return TIMUIKitChat(
      conversationID: _getConvID() ?? '', // groupID 或者 UserID
      conversationType: selectedConversation.type ?? 0, // 会话类型
      conversationShowName: selectedConversation.showName ?? "", // 会话展示名称
      onTapAvatar: (_) {}, // 点击消息发送者头像回调事件、可与 TIMUIKitProfile 关联使用
      appBarActions: [
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.more_horiz_outlined))
      ],
    );
  }
}


/// main.dart

/// 部分代码省略
void _login() async {
    final res = await _coreInstance.login(userID: userID, userSig: userSig);
    if (res.code == 0) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
            builder: (BuildContext context) => const Conversation()),
        (route) => false,
      );
    }
  }
```
### 常见问题
#### 1. 引入了 TUIKit 还需要引入 IM SDK 吗？
不需要再次引入 IM SDK 了。如果需要使用 IM SDK 相关的接口，可通过 [`TIMUIKitCore.getSDKInstance()`](../../uikit-sdk-api/TIMUIKitCore/getSDKInstance.md) 获取。为了保证 IM SDK 版本的一致性，我们推荐您使用该方式使用 SDK。
#### 2. 发送语音、图片、文件等消息闪退?
请查看是否打开了**相机**、**麦克风**、**相册**等权限。

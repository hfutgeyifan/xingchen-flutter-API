---
description: 历史消息列表的ListView配置
---

# ToolTipsConfig

## 关键类描述

历史消息列表的ListView配置

## 参数

### key

* 参数类型 : Key
* 参数描述 : 组件Key值

### scrollDirection

* 参数类型 : Axis
* 参数描述 : 滚动方向

### primary

* 参数类型 : bool
* 参数描述 : 当内容不足以滚动时，是否支持滚动；对于iOS系统还有一个效果：当用户点击状态栏时是否滑动到顶部。

### physics

* 参数类型 : ScrollPhysics
* 参数描述 : 控制滚动到物理特性

### padding

* 参数类型 : EdgeInsetsGeometry
* 参数描述 : 用来设置BoxScrollView中子控件与父控件的间距

### itemExtent

* 参数类型 : double
* 参数描述 : 该参数如果不为null，则会强制children的“长度”为itemExtent的值；这里的“长度”是指滚动方向上子组件的长度，也就是说如果滚动方向是垂直方向，则itemExtent代表子组件的高度；如果滚动方向为水平方向，则itemExtent就代表子组件的宽度。在ListView中，指定itemExtent比让子组件自己决定自身长度会有更好的性能，这是因为指定itemExtent后，滚动系统可以提前知道列表的长度，而无需每次构建子组件时都去再计算一下，尤其是在滚动位置频繁变化时（滚动系统需要频繁去计算列表高度）。

### prototypeItem

* 参数类型 : Widget
* 参数描述 : 如果我们知道列表中的所有列表项长度都相同但不知道具体是多少，这时我们可以指定一个列表项，该列表项被称为 prototypeItem（列表项原型）。指定 prototypeItem 后，可滚动组件会在 layout 时计算一次它延主轴方向的长度，这样也就预先知道了所有列表项的延主轴方向的长度，所以和指定 itemExtent 一样，指定 prototypeItem 会有更好的性能。注意，itemExtent 和prototypeItem 互斥，不能同时指定它们。

### cacheExtent

* 参数类型 : double
* 参数描述 : 可见区域的前后会有一定高度的空间去缓存子控件，当滑动时就可以迅速呈现

### semanticChildCount

* 参数类型 : int
* 参数描述 : 有含义的子控件的数量，如ListView会用children的长度，ListView.separated会用children长度的一半

### dragStartBehavior

* 参数类型 : DragStartBehavior
* 参数描述 : 处理拖动开始行为的方式与时机

### keyboardDismissBehavior

* 参数类型 : ScrollViewKeyboardDismissBehavior
* 参数描述 : ScrollView关闭键盘的行为

### restorationId

* 参数类型 : String
* 参数描述 : 在某种情况下，保持滑动的偏移量

### clipBehavior

* 参数类型 : Clip
* 参数描述 : 裁剪行为
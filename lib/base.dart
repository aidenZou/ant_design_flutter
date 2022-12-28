import 'package:flutter/material.dart';

import 'examples/button_example.dart';
import 'examples/divider_example.dart';
import 'examples/modal_example.dart';
import 'examples/space_example.dart';

List<ExampleModel> widgetExample = [
  // 通用
  // Button按钮
  ExampleModel(name: 'Button', builder: (BuildContext context) => const BaseView(child: ButtonExample())),
  // Icon图标
  // Typography排版

  // 布局
  // Divider分割线
  ExampleModel(name: 'Divider', builder: (BuildContext context) => const BaseView(child: DividerExample())),
  // Grid栅格
  // Layout布局
  // Space间距
  ExampleModel(name: 'Space', builder: (BuildContext context) => const BaseView(child: SpaceExample())),

  // 导航
  // Anchor锚点
  // Breadcrumb面包屑
  // Dropdown下拉菜单
  // Menu导航菜单
  // Pagination分页
  // Steps步骤条

  // 数据录入
  // AutoComplete自动完成
  // Cascader级联选择
  // Checkbox多选框
  // DatePicker日期选择框
  // Form表单
  // Input输入框
  // InputNumber数字输入框
  // Mentions提及
  // Radio单选框
  // Rate评分
  // Select选择器
  // Slider滑动输入条
  // Switch开关
  // TimePicker时间选择框
  // Transfer穿梭框
  // TreeSelect树选择
  // Upload上传

  // 数据展示
  // Avatar头像
  // Badge徽标数
  // Calendar日历
  // Card卡片
  // Carousel走马灯
  // Collapse折叠面板
  // Descriptions描述列表
  // Empty空状态
  // Image图片
  // List列表
  // Popover气泡卡片
  // QRCode二维码
  // Segmented分段控制器
  // Statistic统计数值
  // Table表格
  // Tabs标签页
  // Tag标签
  // Timeline时间轴
  // Tooltip文字提示
  // Tour漫游式引导
  // Tree树形控件

  // 反馈
  // Alert警告提示
  // Drawer抽屉
  // Message全局提示
  // Modal对话框
  ExampleModel(name: 'Modal', builder: (BuildContext context) => const BaseView(child: ModalExample())),
  // Notification通知提醒框
  // Popconfirm气泡确认框
  // Progress进度条
  // Result结果
  // Skeleton骨架屏
  // Spin加载中

  // 其他
  // Affix固钉
  // App包裹组件
  // ConfigProvider全局化配置
  // FloatButton悬浮按钮
  // Watermark水印
];

class BaseView extends StatelessWidget {
  const BaseView({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: child,
    );
  }
}

class ExampleModel {
  ExampleModel({
    required this.name,
    required this.builder,
  });

  final String name;
  final WidgetBuilder builder;
}

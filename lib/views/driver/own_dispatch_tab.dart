import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/driver/own_dispatch_tab_controller.dart';

class OwnDispatchTab extends GetWidget<OwnDispatchTabController> {
  const OwnDispatchTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final safeArea = MediaQuery.of(context).padding.top;
    final themeData = Theme.of(context);

    return const Text('Tab 1');
  }
}

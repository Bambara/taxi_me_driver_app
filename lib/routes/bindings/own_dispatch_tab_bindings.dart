import 'package:get/get.dart';

import '../../controllers/driver/own_dispatch_tab_controller.dart';

class OwnDispatchTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OwnDispatchTabController());
  }
}

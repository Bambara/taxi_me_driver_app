import 'package:get/get.dart';

import '../../controllers/driver/own_network_tab_controller.dart';

class OwnNetworkTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OwnNetworkTabController());
  }
}

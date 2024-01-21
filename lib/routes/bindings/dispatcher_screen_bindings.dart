import 'package:get/get.dart';

import '../../controllers/driver/dispatcher_controller.dart';

class DispatcherScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DispatcherController());
  }
}

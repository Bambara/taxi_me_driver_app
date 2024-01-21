import 'package:get/get.dart';

import '../../controllers/driver/dispatcher_hire_controller.dart';

class DispatcherHireScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DispatcherHireController());
  }
}

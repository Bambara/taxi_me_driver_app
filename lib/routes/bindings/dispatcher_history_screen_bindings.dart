import 'package:get/get.dart';

import '../../controllers/driver/dispatcher_history_controller.dart';

class DispatcherHistoryScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DispatcherHistoryController());
  }
}

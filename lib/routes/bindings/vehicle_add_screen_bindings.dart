import 'package:get/get.dart';

import '../../controllers/driver/vehicle_add_controller.dart';

class VehicleAddScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VehicleAddController());
  }
}

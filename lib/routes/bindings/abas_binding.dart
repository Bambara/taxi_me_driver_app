import 'package:get/get.dart';

import '../../controllers/driver/abas_controller.dart';

class ABASBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ABASController());
  }
}

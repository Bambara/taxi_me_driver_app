import 'package:get/get.dart';

import '../../controllers/user/otp_verify_controller.dart';

class OPTVerifyScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OPTVerifyController());
  }
}

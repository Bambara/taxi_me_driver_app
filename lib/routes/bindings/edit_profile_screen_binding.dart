import 'package:get/get.dart';

import '../../controllers/driver/edit_profile_controller.dart';

class EditProfileScreenBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditProfileController());
  }
}

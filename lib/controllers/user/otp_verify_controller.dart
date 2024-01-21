import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../../api/rest/api_client.dart';
import '../../core/utils/pref_utils.dart';

class OPTVerifyController extends GetxController {
  final _logger = Logger(filter: null);

  final _prefUtils = Get.find<PrefUtils>();

  final _apiClient = ApiClient();

  final _userCtrl = TextEditingController();
  final _passCtrl = TextEditingController();

  get prefUtils => _prefUtils;

  get userCtrl => _userCtrl;

  get passCtrl => _passCtrl;
}

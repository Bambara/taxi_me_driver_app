import 'package:fluent_ui/fluent_ui.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../api/rest/api_client.dart';
import '../../core/utils/pref_utils.dart';

class LoginController extends GetxController {
  final _logger = Logger(filter: null);

  final _prefUtils = Get.find<PrefUtils>();

  final _apiClient = ApiClient();

  final _userCtrl = TextEditingController();
  final _passCtrl = TextEditingController();

  void showTAC() async {
    try {
      const url = 'https://taxime.lk/privacy-policy/';
      if (await launchUrl(Uri.parse(url))) {
        // await launchUrl(Uri.parse(url));
      } else {
        throw "Could not launch $url";
      }
    } catch (e) {
      _logger.e(e);
    }
  }

  get rdbC => _prefUtils;

  get userCtrl => _userCtrl;

  get passCtrl => _passCtrl;
}

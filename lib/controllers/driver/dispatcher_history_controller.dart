import 'package:logger/logger.dart';

import '../../api/rest/api_client.dart';
import '../../core/app_export.dart';
import '../../routes/bindings/own_dispatch_tab_bindings.dart';
import '../../views/driver/own_dispatch_tab.dart';
import '../../views/driver/own_network_tab.dart';

class DispatcherHistoryController extends GetxController {
  final _logger = Logger(filter: null);

  final _prefUtils = Get.find<PrefUtils>();

  final _apiClient = ApiClient();

  int _selectedIndex = 0;

  final _tabList = [
    const OwnDispatchTab(),
    const OwnNetworkTab(),
  ];

  @override
  void onInit() {
    super.onInit();
    OwnDispatchTabBinding().dependencies();
  }

  int get selectedIndex => _selectedIndex;

  set selectedIndex(int value) {
    _selectedIndex = value;
    update();
  }

  get tabList => _tabList;
}

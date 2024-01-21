import 'package:get/get.dart';

import '../views/driver/bank_account_add_screen.dart';
import '../views/driver/dispatcher_hire_screen.dart';
import '../views/driver/dispatcher_history_screen.dart';
import '../views/driver/dispatcher_screen.dart';
import '../views/driver/own_dispatch_tab.dart';
import '../views/driver/own_network_tab.dart';
import '../views/driver/vehicle_add_screen.dart';
import '../views/user/edit_profile_screen.dart';
import '../views/user/login_screen.dart';
import '../views/user/otp_verify_screen.dart';
import 'bindings/abas_binding.dart';
import 'bindings/dispatcher_hire_screen_bindings.dart';
import 'bindings/dispatcher_history_screen_bindings.dart';
import 'bindings/dispatcher_screen_bindings.dart';
import 'bindings/edit_profile_screen_binding.dart';
import 'bindings/login_screen_bindings.dart';
import 'bindings/otp_verify_screen_bindings.dart';
import 'bindings/own_dispatch_tab_bindings.dart';
import 'bindings/own_network_tab_bindings.dart';
import 'bindings/vehicle_add_screen_bindings.dart';

class AppRoutes {
  static const String initialRoute = '/initialRoute';

  // static const String loginScreen = '/loginScreen';
  // static const String otpVerifyScreen = '/otpVerifyScreen';
  // static const String vehicleAddScreen = '/vehicleAddScreen';
  // static const String dispatcherScreen = '/dispatcherScreen';

  static List<GetPage> pages = [
    GetPage(
      name: initialRoute,
      page: () => const LoginScreen(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: "/loginScreen",
      page: () => const LoginScreen(),
      binding: LoginScreenBinding(),
    ),
    GetPage(
      name: '/otpVerifyScreen',
      page: () => const OPTVerifyScreen(),
      binding: OPTVerifyScreenBinding(),
    ),
    GetPage(
      name: '/vehicleAddScreen',
      page: () => const VehicleAddScreen(),
      binding: VehicleAddScreenBinding(),
    ),
    GetPage(
      name: '/dispatcherScreen',
      page: () => const DispatcherScreen(),
      binding: DispatcherScreenBinding(),
    ),
    GetPage(
      name: '/dispatcherHistoryScreen',
      page: () => const DispatcherHistoryScreen(),
      bindings: [
        DispatcherHistoryScreenBinding(),
      ],
    ),
    GetPage(
      name: '/ownDispatchTab',
      page: () => const OwnDispatchTab(),
      binding: OwnDispatchTabBinding(),
    ),
    GetPage(
      name: '/ownNetworkTab',
      page: () => const OwnNetworkTab(),
      binding: OwnNetworkTabBinding(),
    ),
    GetPage(
      name: '/dispatcherHireScreen',
      page: () => const DispatcherHireScreen(),
      binding: DispatcherHireScreenBinding(),
    ),
    GetPage(
      name: '/EditProfileScreen',
      page: () => EditProfileScreen(),
      binding: EditProfileScreenBindings(),
    ),
    GetPage(
      name: '/AddBankAccount',
      page: () => AddBankAccScreen(),
      binding: ABASBindings(),
    )
  ];
}
